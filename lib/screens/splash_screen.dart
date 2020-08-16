import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';
import 'package:task_app/screens/screens.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadSplash();
  }

  _loadSplash() async {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen(),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/login.png',
              width: MediaQuery.of(context).size.width * 0.8,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'TASK APP',
                style: TextStyle(
                  color: ThemeColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

