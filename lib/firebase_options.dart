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
    apiKey: 'AIzaSyB01ItigBjfNpf7E-ZFeIrAIH4XyoFX7mg',
    appId: '1:799949434221:web:992729a3c060ba4264be64',
    messagingSenderId: '799949434221',
    projectId: 'kepu-f6479',
    authDomain: 'kepu-f6479.firebaseapp.com',
    databaseURL: 'https://kepu-f6479-default-rtdb.firebaseio.com',
    storageBucket: 'kepu-f6479.appspot.com',
    measurementId: 'G-J08C1W92DL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSvslcn62jLneDFwZYdjQy7qJm2RwZKh0',
    appId: '1:799949434221:android:5993524dc0106dca64be64',
    messagingSenderId: '799949434221',
    projectId: 'kepu-f6479',
    databaseURL: 'https://kepu-f6479-default-rtdb.firebaseio.com',
    storageBucket: 'kepu-f6479.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9A-pDFezvAfl7GrEemhFGgKiBrHhLvSI',
    appId: '1:799949434221:ios:d6afe841dd69e94c64be64',
    messagingSenderId: '799949434221',
    projectId: 'kepu-f6479',
    databaseURL: 'https://kepu-f6479-default-rtdb.firebaseio.com',
    storageBucket: 'kepu-f6479.appspot.com',
    androidClientId: '799949434221-hs0vmr58adimi667glgnupokk423vdcg.apps.googleusercontent.com',
    iosClientId: '799949434221-vpr71u0larlugo404c370i1bbd9kddim.apps.googleusercontent.com',
    iosBundleId: 'com.myApp.kepu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9A-pDFezvAfl7GrEemhFGgKiBrHhLvSI',
    appId: '1:799949434221:ios:9002eb9ab686331464be64',
    messagingSenderId: '799949434221',
    projectId: 'kepu-f6479',
    databaseURL: 'https://kepu-f6479-default-rtdb.firebaseio.com',
    storageBucket: 'kepu-f6479.appspot.com',
    androidClientId: '799949434221-hs0vmr58adimi667glgnupokk423vdcg.apps.googleusercontent.com',
    iosClientId: '799949434221-0k4toi03rpmf9jqqgusohsq9kjs4unbr.apps.googleusercontent.com',
    iosBundleId: 'com.myApp.kepu.RunnerTests',
  );
}
