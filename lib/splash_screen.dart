import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:haseeb_ur_rehman/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3)
  )
    ..repeat();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () =>
            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  LoginPage()
            ))

    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash.png')
        ),
    )

    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Meel',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Color(0xffFC6011)
    ),),
    Text('Monkey',
      textAlign: TextAlign.center,
      style: TextStyle(
fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.grey
    ),),
    ],
    ),
          SizedBox(height: 10),
          Text('Food Delivery',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18
          ),
          )
    ]
    )
        )
    );
  }

}