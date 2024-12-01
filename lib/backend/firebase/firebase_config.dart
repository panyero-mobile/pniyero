import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD567-rFkWviyKH37ZkL76fYgMdkq-D-nc",
            authDomain: "exchange-crypto-app-tem-s43v24.firebaseapp.com",
            projectId: "exchange-crypto-app-tem-s43v24",
            storageBucket: "exchange-crypto-app-tem-s43v24.firebasestorage.app",
            messagingSenderId: "287861754040",
            appId: "1:287861754040:web:7a6f3b442914a8896f8c4d"));
  } else {
    await Firebase.initializeApp();
  }
}
