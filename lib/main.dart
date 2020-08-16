import 'package:flutter/material.dart';
import 'package:task_app/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
