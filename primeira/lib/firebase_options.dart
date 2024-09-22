// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAWIeAkamzNw53KppRPuxgyEh1frv90seU',
    appId: '1:925913157633:web:a06ec3275e4bcde6023000',
    messagingSenderId: '925913157633',
    projectId: 'flutter-primeiroapp',
    authDomain: 'flutter-primeiroapp.firebaseapp.com',
    storageBucket: 'flutter-primeiroapp.appspot.com',
    measurementId: 'G-4L6Z9WPHGC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDdKekVOwLLxSFzhSSfjv1rd0T6TfUMRTg',
    appId: '1:925913157633:android:538f68be9da2fd09023000',
    messagingSenderId: '925913157633',
    projectId: 'flutter-primeiroapp',
    storageBucket: 'flutter-primeiroapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDD4rCbPzuno-yfCxCCLUTZY3DttFbEDWc',
    appId: '1:925913157633:ios:9c619d6ed82a32d3023000',
    messagingSenderId: '925913157633',
    projectId: 'flutter-primeiroapp',
    storageBucket: 'flutter-primeiroapp.appspot.com',
    iosBundleId: 'souza.yasmin.flutterPrimeiroapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWIeAkamzNw53KppRPuxgyEh1frv90seU',
    appId: '1:925913157633:web:bbc745bc122d359f023000',
    messagingSenderId: '925913157633',
    projectId: 'flutter-primeiroapp',
    authDomain: 'flutter-primeiroapp.firebaseapp.com',
    storageBucket: 'flutter-primeiroapp.appspot.com',
    measurementId: 'G-SGBTBH2BFS',
  );
}