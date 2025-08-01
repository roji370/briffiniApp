import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default Firebase configuration options for different platforms
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
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // Web configuration
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCxGroehAVetfOyNexCJglaY06ishxcrSE',
    appId: '1:296902325405:web:443c0d4b0e8bffd8969074',
    messagingSenderId: '296902325405',
    projectId: 'course-c18bb',
    authDomain: 'course-c18bb.firebaseapp.com',
    storageBucket: 'course-c18bb.firebasestorage.app',
    measurementId: 'G-481TZLW9M7',
  );

  // Android configuration
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxGroehAVetfOyNexCJglaY06ishxcrSE',
    appId: '1:296902325405:android:296902325405123456789',
    messagingSenderId: '296902325405',
    projectId: 'course-c18bb',
    storageBucket: 'course-c18bb.firebasestorage.app',
  );

  // iOS configuration
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXE9XOu9W-yr0oHs-geQYJjzQ9UnsPcB4',
    appId: '1:296902325405:ios:31e16c468a855d13969074',
    messagingSenderId: '296902325405',
    projectId: 'course-c18bb',
    storageBucket: 'course-c18bb.firebasestorage.app',
    iosBundleId: 'com.briffini.academy',
  );

  // Other platforms
  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxGroehAVetfOyNexCJglaY06ishxcrSE',
    appId: '1:296902325405:macos:your_macos_app_id',
    messagingSenderId: '296902325405',
    projectId: 'course-c18bb',
    storageBucket: 'course-c18bb.firebasestorage.app',
    iosBundleId: 'com.briffini.academy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCxGroehAVetfOyNexCJglaY06ishxcrSE',
    appId: '1:296902325405:windows:your_windows_app_id',
    messagingSenderId: '296902325405',
    projectId: 'course-c18bb',
    storageBucket: 'course-c18bb.firebasestorage.app',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyCxGroehAVetfOyNexCJglaY06ishxcrSE',
    appId: '1:296902325405:linux:your_linux_app_id',
    messagingSenderId: '296902325405',
    projectId: 'course-c18bb',
    storageBucket: 'course-c18bb.firebasestorage.app',
  );
}
