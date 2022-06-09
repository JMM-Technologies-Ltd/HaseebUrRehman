import 'package:flutter/material.dart';

class ReUserContainerButton extends StatefulWidget {

  Color color;
  String name;
  Function onclick;
  ReUserContainerButton({required this.onclick,required this.color,required this.name,});

  @override
  State<ReUserContainerButton> createState() => _ReUserContainerButtonState();
}

class _ReUserContainerButtonState extends State<ReUserContainerButton> {
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
        child: Center(
         child :  Text(widget.name,
         style: TextStyle(
           color: Colors.white,
           fontSize: 20
         ),
         )
        ),
      )
    );
  }
}


