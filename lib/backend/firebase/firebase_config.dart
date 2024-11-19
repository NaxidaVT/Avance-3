import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyChj6P5cI3ss_tFCRdP27MmqcaoRiw-B3g",
            authDomain: "proyecto-rachi-9ur9fs.firebaseapp.com",
            projectId: "proyecto-rachi-9ur9fs",
            storageBucket: "proyecto-rachi-9ur9fs.firebasestorage.app",
            messagingSenderId: "994755870898",
            appId: "1:994755870898:web:acaa43fa9e295e1cf589ab"));
  } else {
    await Firebase.initializeApp();
  }
}
