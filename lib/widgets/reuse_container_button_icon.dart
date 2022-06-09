import 'package:flutter/material.dart';


class ReUserContainerButtonIcon extends StatefulWidget {
  IconData icon;
  Color color;
  String name;
  Function onclick;
  ReUserContainerButtonIcon({required this.color,
    required this.name,
    required this.icon,
  required this.onclick
  });

  @override
  State<ReUserContainerButtonIcon> createState() => _ReUserContainerButtonIconState();
}

class _ReUserContainerButtonIconState extends State<ReUserContainerButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2.0,
                  blurRadius: 4.0
              ),
            ]
        ),
        child:  MaterialButton(
          onPressed: (){
            widget.onclick();
          },
          child: Row(
            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
            children: [
              Icon(widget.icon,color: Colors.white,size: 20,),
              Text(widget.name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),)
            ],
          ),
        )
    );
  }
}


