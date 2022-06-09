import 'package:flutter/material.dart';

class PopularRestaurant extends StatelessWidget {
  String name;


  PopularRestaurant({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width:  MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                    color: Colors.grey.withOpacity(0.2)
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/pizza.png'),
                        fit: BoxFit.fitWidth
                    )
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star,color: Color(0xffFC6011),size: 15,),
                        Text('4.9',
                          style: TextStyle(
                              color: Color(0xffFC6011)
                          ),
                        ) ,
                        Text('(124 ratings) Cafe',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                        Text('.',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffFC6011)
                          ),
                        ),
                        Text('Western Food',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 15,)
      ],
    );
  }
}
