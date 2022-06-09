import 'package:flutter/material.dart';

class  MostPopuler extends StatelessWidget {
 String name;


 MostPopuler({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
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
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage('assets/images/pizza3.png'),
                  fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(height: 4,),
          Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Cafe',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    Text('.',
                      style: TextStyle(
                          fontSize: 18,
                          color:  Color(0xffFC6011)
                      ),
                    ),
                    Text('Western Food',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.star,color: Color(0xffFC6011),size: 15,),
                    Text('4.9',
                      style: TextStyle(
                          color: Color(0xffFC6011)
                      ),
                    ) ,
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
