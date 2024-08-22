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
    apiKey: 'AIzaSyANzuwV6jM8oFonN5cHDfNZfZFiJRw7Pzw',
    appId: '1:146996647303:web:1938ac729c4c4c4162ef22',
    messagingSenderId: '146996647303',
    projectId: 'proplist-2c132',
    authDomain: 'proplist-2c132.firebaseapp.com',
    storageBucket: 'proplist-2c132.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCg1NdADGZcDK0L2DYr4-L14_soXdmTrcM',
    appId: '1:146996647303:android:440c5a0ed57d801462ef22',
    messagingSenderId: '146996647303',
    projectId: 'proplist-2c132',
    storageBucket: 'proplist-2c132.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLrxqEwUprk_Pp-_dcivYECIdbKzttg74',
    appId: '1:146996647303:ios:1583f3822b391b8c62ef22',
    messagingSenderId: '146996647303',
    projectId: 'proplist-2c132',
    storageBucket: 'proplist-2c132.appspot.com',
    iosBundleId: 'com.proplist.proplist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBLrxqEwUprk_Pp-_dcivYECIdbKzttg74',
    appId: '1:146996647303:ios:1583f3822b391b8c62ef22',
    messagingSenderId: '146996647303',
    projectId: 'proplist-2c132',
    storageBucket: 'proplist-2c132.appspot.com',
    iosBundleId: 'com.proplist.proplist',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyANzuwV6jM8oFonN5cHDfNZfZFiJRw7Pzw',
    appId: '1:146996647303:web:4e4ff63b7777eb7c62ef22',
    messagingSenderId: '146996647303',
    projectId: 'proplist-2c132',
    authDomain: 'proplist-2c132.firebaseapp.com',
    storageBucket: 'proplist-2c132.appspot.com',
  );
}
