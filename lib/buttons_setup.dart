import 'package:flutter/material.dart';



class ButtonsSetup extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textColor;
  final double textSize;
  final Function callback;
  const ButtonsSetup({super.key,
    required this.text,
    required this.fillcolor,
    required this.textColor,
    required this.textSize,
    required this.callback
});


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Color(fillcolor),
          onPressed: ()=>callback(text),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child:Text(text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

