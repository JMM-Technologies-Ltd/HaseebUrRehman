import 'package:flutter/material.dart';

class RecentItem extends StatelessWidget {
  String name,image;


  RecentItem({required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
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
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Row(
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

                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: Color(0xffFC6011),size: 15,),
                    Text('4.9',
                      style: TextStyle(
                          color: Color(0xffFC6011)
                      ),
                    ) ,
                    Text('(124 Ratings)',
                      style: TextStyle(
                          color: Color(0xffFC6011)
                      ),
                    ) ,
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(height: 15,)
      ],
    );
  }
}
