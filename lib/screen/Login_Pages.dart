import 'package:flutter/material.dart';

class Login_Pages extends StatefulWidget {
  const Login_Pages({super.key});

  @override
  State<Login_Pages> createState() => _Login_PagesState();
}

class _Login_PagesState extends State<Login_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
            child: Row(
              children: [
                Text(
                  "Log In to",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Atmosfy",
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: 290,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Center(
                  child: Text(
                    "Sign In Google",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 90,
            width: 290,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Center(
                  child: Text(
                    "Sign In Facebook",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
