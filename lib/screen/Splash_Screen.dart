import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_14/screen/Login_Pages.dart';
import 'package:flutter_application_14/screen/Login_Sigin_page.dart';
import 'package:flutter_application_14/screen/home_page.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login_Pages())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Image.asset("assets/Atmosfy.png", fit: BoxFit.fill),
      ),
    );
  }
}
