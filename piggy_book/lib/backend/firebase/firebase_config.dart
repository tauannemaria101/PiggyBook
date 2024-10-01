import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCsR-R-KtnwsQis1cV1Bt6ELhLdVg9biSE",
            authDomain: "piggy-book-a09fa.firebaseapp.com",
            projectId: "piggy-book-a09fa",
            storageBucket: "piggy-book-a09fa.appspot.com",
            messagingSenderId: "104619931228",
            appId: "1:104619931228:web:d833147b918595cfecd899"));
  } else {
    await Firebase.initializeApp();
  }
}
