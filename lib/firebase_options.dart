import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError('Web is not supported yet.');
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError('DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbd_aF8H449aVVrZuuMlOtIGRtL_GcY8c',
    appId: '1:35113220655:android:34ebb3776cd6c8bc9524da',
    messagingSenderId: '35113220655',
    projectId: 'store-1a071',
    storageBucket: 'store-1a071.firebasestorage.app',
  );
}
