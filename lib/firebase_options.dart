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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAyZO4Dx-J_PhUD6npA9pZ0A_4e14bvgLg',
    appId: '1:324326037477:web:7d02954edf4294ea27c10c',
    messagingSenderId: '324326037477',
    projectId: 'ceptemuayene',
    authDomain: 'ceptemuayene.firebaseapp.com',
    databaseURL: 'https://ceptemuayene-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ceptemuayene.appspot.com',
    measurementId: 'G-TDL6PSHW6S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnd6hdDkgHhWWPvciVwxqclHkPdtFTx8U',
    appId: '1:324326037477:android:6a272f5a0fd72db527c10c',
    messagingSenderId: '324326037477',
    projectId: 'ceptemuayene',
    databaseURL: 'https://ceptemuayene-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ceptemuayene.appspot.com',
  );
}