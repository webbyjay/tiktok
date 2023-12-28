import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/screen/home_page.dart';
import 'package:flutter_application_14/screen/phone.dart';
import 'package:flutter_application_14/utils/auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login_Pages extends StatefulWidget {
  const Login_Pages({super.key});

  @override
  State<Login_Pages> createState() => _Login_PagesState();
}

class _Login_PagesState extends State<Login_Pages> {
  ValueNotifier userCredential = ValueNotifier('');
  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      // TODO
      print('exception->$e');
    }
  }

  Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  Future<void> _loginWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      final AccessToken accessToken = result.accessToken!;
      print('Facebook Login Successful! Token: $accessToken');
    } catch (e) {
      print('Facebook Login Failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 70, horizontal: 40),
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
          GestureDetector(
            onTap: () async {
              FirebaseService.signInwithGoogle(context);
              // signInWithGoogle();
              // userCredential.value = await signInWithGoogle();
              // if (userCredential.value != null)
              print(userCredential.value.user!.email);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Phone_num()));
            },
            child: Container(
              height: 50,
              width: 290,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/Google.jpeg")),
                  const Center(
                    child: Text(
                      "Sign In Google",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Phone_num()));
            },
            child: Container(
              height: 50,
              width: 290,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      _loginWithFacebook;
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Phone_num()));
                    },
                    child: Container(
                        height: 90,
                        width: 90,
                        child: Image.asset("assets/facebook2.png")),
                  ),
                  const Text(
                    "Sign In Facebook",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
