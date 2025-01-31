import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';
import '../exceptions/weather_exception.dart';
import '../models/direct_geocoding.dart';
import '../models/weather.dart';
import 'http_error_handler.dart';

class WeatherApiServices {
  final http.Client httpClient;
  WeatherApiServices({
    required this.httpClient,
  });

  Future<DirectGeocoding> getDirectGeocoding(String city) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: kApiHost,
      path: '/geo/1.0/direct',
      queryParameters: {
        'q': city,
        'limit': kLimit,
        'appid': dotenv.env['APPID'],
      },
    );

    try {
      final http.Response response = await httpClient.get(uri);

      if (response.statusCode != 200) {
        throw Exception(httpErrorHandler(response));
      }

      final responseBody = json.decode(response.body);

      if (responseBody.isEmpty) {
        throw WeatherException('Cannot get the location of $city');
      }

      final directGeocoding = DirectGeocoding.fromJson(responseBody);

      return directGeocoding;
    } catch (e) {
      rethrow;
    }
  }

  Future<Weather> getWeather(DirectGeocoding directGeocoding) async {
    final Uri uri = Uri(
      scheme: 'https',
      host: kApiHost,
      path: '/data/2.5/weather',
      queryParameters: {
        'lat': '${directGeocoding.lat}',
        'lon': '${directGeocoding.lon}',
        'units': kUnit,
        'appid': dotenv.env['APPID'],
      },
    );

    try {
      final http.Response response = await httpClient.get(uri);

      if (response.statusCode != 200) {
        throw Exception(httpErrorHandler(response));
      }

      final weatherJson = json.decode(response.body);

      final Weather weather = Weather.fromJson(weatherJson);

      return weather;
    } catch (e) {
      rethrow;
    }
  }
}


// Response
// body:
// "[{"name":"Kolkata","local_names":{"fa":"کلکته","hi":"कोलकाता","ar":"كلكتة","bn":"কলকাতা","ps":"کلکته","ur":"کلکتہ","ks":"کَلٕکَت…"
// bodyBytes:
// Uint8List (283 items)
// contentLength:
// 283
// hashCode:
// 817393644
// headers:
// Map (9 items)
// isRedirect:
// false
// persistentConnection:
// true
// reasonPhrase:
// "OK"
// request:
// Request (GET https://api.openweathermap.org/geo/1.0/direct?q=kolkata&limit=1&appid=a8f7efb2d5204b550140bbefd667d754)
// runtimeType:
// Type (Response)
// statusCode:
// 200