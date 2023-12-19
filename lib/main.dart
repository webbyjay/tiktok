import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
        apiKey: "AIzaSyDMyRR6szw00F9gKCbDKdcfGsTQmQriQSc",
        appId: "1:810199015669:android:46f8e927bad871ffcbe5bc",
        messagingSenderId: "1:810199015669:android:46f8e927bad871ffcbe5bc",
        projectId: "tiktok-reel-b6163",
        storageBucket: "tiktok-reel-b6163.appspot.com"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
