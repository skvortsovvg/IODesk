import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCKzj93CVptu9mVBQvuZpeULIL5K8_6yrE",
            authDomain: "iodesk-17676.firebaseapp.com",
            projectId: "iodesk-17676",
            storageBucket: "iodesk-17676.appspot.com",
            messagingSenderId: "922366990857",
            appId: "1:922366990857:web:5d331253289cbc2b3db6d8"));
  } else {
    await Firebase.initializeApp();
  }
}
