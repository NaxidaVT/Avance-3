import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA5Y2xzTq39qIaC2MV-vhMBYJJUvkXRm-E",
            authDomain: "rachiaccesorios.firebaseapp.com",
            projectId: "rachiaccesorios",
            storageBucket: "rachiaccesorios.firebasestorage.app",
            messagingSenderId: "673034950449",
            appId: "1:673034950449:web:0448fb2f1dd21ff25f8210",
            measurementId: "G-XBWKMY143V"));
  } else {
    await Firebase.initializeApp();
  }
}
