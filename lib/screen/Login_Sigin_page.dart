import 'package:flutter/material.dart';

class Login_Sign_page extends StatefulWidget {
  const Login_Sign_page({super.key});

  @override
  State<Login_Sign_page> createState() => _Login_Sign_pageState();
}

class _Login_Sign_pageState extends State<Login_Sign_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 140,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.red)))),
                    child: Text("Log In")),
              ),
              Spacer(),
              Container(
                height: 60,
                width: 140,
                child: ElevatedButton(onPressed: () {}, child: Text("Sigi Up")),
              )
            ],
          )
        ],
      ),
    );
  }
}
