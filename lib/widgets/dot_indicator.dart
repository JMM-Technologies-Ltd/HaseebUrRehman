import 'package:flutter/material.dart';


class DotIndicator extends StatelessWidget {
  final bool isActive;


  DotIndicator({this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          color: isActive ? Color(0xffFC6011): Color(0xffD6D6D6),
          shape: BoxShape.circle
      ),
    );
  }
}
