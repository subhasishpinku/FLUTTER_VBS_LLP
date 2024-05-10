// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBLgCnhwb68A0XMcfqifq_V9G3TQON4bsc',
    appId: '1:480418657174:web:e0c1ece73fb82b7c65e3b7',
    messagingSenderId: '480418657174',
    projectId: 'flutternotification-d2050',
    authDomain: 'flutternotification-d2050.firebaseapp.com',
    storageBucket: 'flutternotification-d2050.appspot.com',
    measurementId: 'G-6RBD5NBBXS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLgNi-Zaa9OZx-go4B2fu0PR7S_UXLFkE',
    appId: '1:480418657174:android:183306aac803e00265e3b7',
    messagingSenderId: '480418657174',
    projectId: 'flutternotification-d2050',
    storageBucket: 'flutternotification-d2050.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgCtGXHMnYXWLRuD978BKqBIavSAA0BcY',
    appId: '1:480418657174:ios:0ab368382997b6de65e3b7',
    messagingSenderId: '480418657174',
    projectId: 'flutternotification-d2050',
    storageBucket: 'flutternotification-d2050.appspot.com',
    iosBundleId: 'com.example.flutterDemos',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgCtGXHMnYXWLRuD978BKqBIavSAA0BcY',
    appId: '1:480418657174:ios:40359f4a181ab8dc65e3b7',
    messagingSenderId: '480418657174',
    projectId: 'flutternotification-d2050',
    storageBucket: 'flutternotification-d2050.appspot.com',
    iosBundleId: 'com.example.flutterDemos.RunnerTests',
  );
}
