import 'package:flutter/material.dart';

class FoodNameWidget extends StatelessWidget {
  String name, image;


  FoodNameWidget({required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                    color: Colors.grey.withOpacity(0.2)
                )
              ]
          ),
        ),
        SizedBox(height: 10),
        Text(name,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),

      ],
    );
  }
}
