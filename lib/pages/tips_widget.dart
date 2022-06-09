import 'package:flutter/material.dart';

class TipesWidget extends StatelessWidget {
  final String name,image,description;


  TipesWidget({required this.name,required this.image,required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  )
                ),

          ),
              SizedBox(height: 20),
                Text(name,
                  textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff4A4B4D),
                    fontSize: 25.0
                ),
                ),
              SizedBox(height: 20),
              Text(description,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
