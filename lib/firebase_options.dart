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
    apiKey: 'AIzaSyAGo4oZAzemWt4IfM47-hYejSw0bQba7Dw',
    appId: '1:616562348078:web:64104f6e4a3b9472ed4fbf',
    messagingSenderId: '616562348078',
    projectId: 'deep-timer-354200',
    authDomain: 'deep-timer-354200.firebaseapp.com',
    storageBucket: 'deep-timer-354200.appspot.com',
    measurementId: 'G-X9PW7BGJRY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTyv-ssPnOGX0Q8oBtzrDhXGkVDlHiUWA',
    appId: '1:616562348078:android:b46aadb7e50d0c3aed4fbf',
    messagingSenderId: '616562348078',
    projectId: 'deep-timer-354200',
    storageBucket: 'deep-timer-354200.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwASldlEVvnbJMQ7xynDcZGwCtoi9Nqbs',
    appId: '1:616562348078:ios:4666187b15ab2d8ded4fbf',
    messagingSenderId: '616562348078',
    projectId: 'deep-timer-354200',
    storageBucket: 'deep-timer-354200.appspot.com',
    iosClientId: '616562348078-l43qrq9f9tpt440ehdqp8hk4mng3e40m.apps.googleusercontent.com',
    iosBundleId: 'com.example.cloneMyapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwASldlEVvnbJMQ7xynDcZGwCtoi9Nqbs',
    appId: '1:616562348078:ios:4666187b15ab2d8ded4fbf',
    messagingSenderId: '616562348078',
    projectId: 'deep-timer-354200',
    storageBucket: 'deep-timer-354200.appspot.com',
    iosClientId: '616562348078-l43qrq9f9tpt440ehdqp8hk4mng3e40m.apps.googleusercontent.com',
    iosBundleId: 'com.example.cloneMyapp',
  );
}
