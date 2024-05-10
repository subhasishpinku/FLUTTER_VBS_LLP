import 'package:assetcomplymobileapp/component/home_carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class DashboardProvider with ChangeNotifier {
  RxInt pageIndex = 0.obs;
  List<Widget> demo = [
    homeCard(),
    homeCard(),
    homeCard(),
    homeCard(),
    homeCard(),
  ];
}
