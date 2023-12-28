import 'package:device_preview/device_preview.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/screen/Splash_Screen.dart';
import 'package:flutter_application_14/screen/home_page.dart';
import 'package:flutter_application_14/utils/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
        apiKey: "AIzaSyDoaQGpVPbPcUHpjOuwdeUYWFT9qnGylls",
        appId: "1:419005577556:android:c307cba5cc0ccfa78bb0c1",
        messagingSenderId: "1:419005577556:android:c307cba5cc0ccfa78bb0c1",
        projectId: "tiktok-reel-final",
        storageBucket: "tiktok-reel-final.appspot.com"),
  );
  await FirebaseAppCheck.instance.activate();
  runApp(MyApp());
}
// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: Splash_Screen(),
    );
  }
}
