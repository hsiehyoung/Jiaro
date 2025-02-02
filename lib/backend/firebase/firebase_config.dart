import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "",
            authDomain: "jiaro-5a15b.firebaseapp.com",
            projectId: "jiaro-5a15b",
            storageBucket: "jiaro-5a15b.appspot.com",
            messagingSenderId: "633182828232",
            appId: "1:633182828232:web:b210b69716c326fbf697fd"));
  } else {
    await Firebase.initializeApp();
  }
}
