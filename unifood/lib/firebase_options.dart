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
    apiKey: 'AIzaSyAUvttZiMZdANN-i5Zm_-wUy_I_lp7GmLs',
    appId: '1:1083188994092:web:561856867ebb2e01c23189',
    messagingSenderId: '1083188994092',
    projectId: 'unifood-75d09',
    authDomain: 'unifood-75d09.firebaseapp.com',
    storageBucket: 'unifood-75d09.appspot.com',
    measurementId: 'G-Y8TFK7CTQJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxmsiL7ysB4koKj9PXMmYhrzRxqFJeHcI',
    appId: '1:1083188994092:android:c2b87a47beec4dd4c23189',
    messagingSenderId: '1083188994092',
    projectId: 'unifood-75d09',
    storageBucket: 'unifood-75d09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8-VD6VjLytRIakbaHZSQIvB8uAgyTlvU',
    appId: '1:1083188994092:ios:db92b1f518d517a5c23189',
    messagingSenderId: '1083188994092',
    projectId: 'unifood-75d09',
    storageBucket: 'unifood-75d09.appspot.com',
    iosClientId: '1083188994092-vebc16sihu2jli92dtkv74qhvsutosk6.apps.googleusercontent.com',
    iosBundleId: 'com.example.zzunifood',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8-VD6VjLytRIakbaHZSQIvB8uAgyTlvU',
    appId: '1:1083188994092:ios:db92b1f518d517a5c23189',
    messagingSenderId: '1083188994092',
    projectId: 'unifood-75d09',
    storageBucket: 'unifood-75d09.appspot.com',
    iosClientId: '1083188994092-vebc16sihu2jli92dtkv74qhvsutosk6.apps.googleusercontent.com',
    iosBundleId: 'com.example.zzunifood',
  );
}