import 'dart:async';

import 'package:custom_painter/homeScreen.dart';
import 'package:custom_painter/logInSrcree.dart';
import 'package:custom_painter/student_sreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;
    String userType = sp.getString('userType') ?? '';

    if (isLogin) {
      if (userType == 'student') {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => StudentSreen()));
        });
      } else {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => Homescreen()));
        });
      }
    } else {
      Timer(Duration(seconds: 3), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => Loginsrcree()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              // color: Colors.amber,
              child: Image.asset(fit: BoxFit.fill, 'assets/red.jpeg'),
            ),
            Container(
              height: 400,
              width: 500,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
