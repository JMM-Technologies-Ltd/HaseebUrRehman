import 'package:flutter/material.dart';
import 'package:haseeb_ur_rehman/pages/home_page.dart';
import 'package:haseeb_ur_rehman/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}


