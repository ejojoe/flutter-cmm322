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
        return macos;
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
    apiKey: 'AIzaSyC8qHLXimX5ruj4h7CA1Ar1rIqROrDA6r4',
    appId: '1:95359687504:web:6c705aaa11535009392a55',
    messagingSenderId: '95359687504',
    projectId: 'binnyapp-b7a0c',
    authDomain: 'binnyapp-b7a0c.firebaseapp.com',
    storageBucket: 'binnyapp-b7a0c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwSrlgDf7SF5KBNw5seGFGraDQiUwSFTU',
    appId: '1:95359687504:android:7a5858ee150caf99392a55',
    messagingSenderId: '95359687504',
    projectId: 'binnyapp-b7a0c',
    storageBucket: 'binnyapp-b7a0c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTD8AfO6dilOd0aJvp-37erGe1sv2g-vs',
    appId: '1:95359687504:ios:73c4fc4e01348db7392a55',
    messagingSenderId: '95359687504',
    projectId: 'binnyapp-b7a0c',
    storageBucket: 'binnyapp-b7a0c.appspot.com',
    androidClientId: '95359687504-i8898k1u8mbqgc13p26oqtel1gqbncrs.apps.googleusercontent.com',
    iosClientId: '95359687504-465tlca5r28pf4g1t799kjpqql3bqbqf.apps.googleusercontent.com',
    iosBundleId: 'com.example.binnyApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTD8AfO6dilOd0aJvp-37erGe1sv2g-vs',
    appId: '1:95359687504:ios:73c4fc4e01348db7392a55',
    messagingSenderId: '95359687504',
    projectId: 'binnyapp-b7a0c',
    storageBucket: 'binnyapp-b7a0c.appspot.com',
    androidClientId: '95359687504-i8898k1u8mbqgc13p26oqtel1gqbncrs.apps.googleusercontent.com',
    iosClientId: '95359687504-465tlca5r28pf4g1t799kjpqql3bqbqf.apps.googleusercontent.com',
    iosBundleId: 'com.example.binnyApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC8qHLXimX5ruj4h7CA1Ar1rIqROrDA6r4',
    appId: '1:95359687504:web:60abb8f44732c08c392a55',
    messagingSenderId: '95359687504',
    projectId: 'binnyapp-b7a0c',
    authDomain: 'binnyapp-b7a0c.firebaseapp.com',
    storageBucket: 'binnyapp-b7a0c.appspot.com',
  );

}