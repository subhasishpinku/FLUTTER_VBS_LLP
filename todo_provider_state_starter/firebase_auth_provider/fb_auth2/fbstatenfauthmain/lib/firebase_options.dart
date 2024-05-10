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
    apiKey: 'AIzaSyC_D_TJPCU4QsHYFpNgKTbihUNItxPzQXE',
    appId: '1:657261516179:web:32b88598aec63d82f2c466',
    messagingSenderId: '657261516179',
    projectId: 'fbstatenfauthmain',
    authDomain: 'fbstatenfauthmain.firebaseapp.com',
    storageBucket: 'fbstatenfauthmain.appspot.com',
    measurementId: 'G-RPCCTZNF53',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkIgU-NKXTtUAA29Y8bWvObXGUXixw3tU',
    appId: '1:657261516179:android:bb4b002c1e5c690df2c466',
    messagingSenderId: '657261516179',
    projectId: 'fbstatenfauthmain',
    storageBucket: 'fbstatenfauthmain.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDyioR6FXOKl5N-XnHG2AD9Jnb9hQf4H9w',
    appId: '1:657261516179:ios:c64a87627c77ae4af2c466',
    messagingSenderId: '657261516179',
    projectId: 'fbstatenfauthmain',
    storageBucket: 'fbstatenfauthmain.appspot.com',
    iosBundleId: 'com.example.fbstatenfauthmain',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDyioR6FXOKl5N-XnHG2AD9Jnb9hQf4H9w',
    appId: '1:657261516179:ios:839e5598b5bd65def2c466',
    messagingSenderId: '657261516179',
    projectId: 'fbstatenfauthmain',
    storageBucket: 'fbstatenfauthmain.appspot.com',
    iosBundleId: 'com.example.fbstatenfauthmain.RunnerTests',
  );
}