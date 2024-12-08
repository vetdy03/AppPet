import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA9LN_Rrk1y5A_R0zfN3E89sxjALIjyy7o",
            authDomain: "appdepeluditos.firebaseapp.com",
            projectId: "appdepeluditos",
            storageBucket: "appdepeluditos.firebasestorage.app",
            messagingSenderId: "564317485392",
            appId: "1:564317485392:web:086917cc1d4d1de47e5455"));
  } else {
    await Firebase.initializeApp();
  }
}
