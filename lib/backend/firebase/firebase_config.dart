import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBM7LxNxZ7quLfin-fIGL1xA_wAS1UOADY",
            authDomain: "aurum-33252.firebaseapp.com",
            projectId: "aurum-33252",
            storageBucket: "aurum-33252.appspot.com",
            messagingSenderId: "64413625291",
            appId: "1:64413625291:web:f9d8b8da7e7e17b2e4a44e",
            measurementId: "G-NEQFGKYRHG"));
  } else {
    await Firebase.initializeApp();
  }
}
