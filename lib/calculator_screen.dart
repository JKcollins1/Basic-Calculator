import 'package:basic_calculator/buttons_setup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});


  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history="";
  late String textToDisplay="";
  late String res;
  late String operation;


  void buttonOnClick(String buttonValue){
    if( buttonValue == "C"){
      textToDisplay="";
      firstNum=0;
      secondNum=0;
      res="";
    }else if(buttonValue=="AC"){
      textToDisplay="";
      firstNum=0;
      secondNum=0;
      res="";
      history="";
    }else if(buttonValue=="+/-"){
      if(textToDisplay[0] != "-"){
        res= "-$textToDisplay";
      }else{
        res= textToDisplay.substring(1);
      }

    }else if(buttonValue== "<"){
      res= textToDisplay.substring(0,textToDisplay.length - 1);
    } else if(buttonValue== "+"||
        buttonValue== "-"||
        buttonValue== "X"||
        buttonValue== "/"){
      firstNum=int.parse(textToDisplay);
      res="";
      operation= buttonValue;
    }else if(buttonValue== "="){
      secondNum= int.parse(textToDisplay);
      if(operation=="+"){
        res=(firstNum + secondNum).toString();
        history= firstNum.toString()+operation.toString()+ secondNum.toString();
      }
      if(operation=="-"){
        res=(firstNum - secondNum).toString();
        history= firstNum.toString()+operation.toString()+ secondNum.toString();
      }
      if(operation=="X"){
        res=(firstNum * secondNum).toString();
        history= firstNum.toString()+operation.toString()+ secondNum.toString();
      }
      if(operation=="/"){
        res=(firstNum / secondNum).toString();
        history= firstNum.toString()+operation.toString()+ secondNum.toString();
      }
    }else{
      res= int.parse(textToDisplay + buttonValue).toString();
    }
    setState(() {
      textToDisplay= res;
    });
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Calculator",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Center(
            child: Text("Basic Calculator"),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
            alignment: const Alignment(1.0,1.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                history,
                style: GoogleFonts.rubik(
                  textStyle:
                  const TextStyle(fontSize: 24, color: Color(0x66FFFFFF)),
                ),
              ),
            ),
          ),
            Container(
              alignment: const Alignment(1.0,1.0),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    textStyle:
                        const TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ),
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonsSetup(
                  text: "AC",
                  fillcolor: 0xFFf44336,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "C",
                  fillcolor: 0xFF93c47d,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "<",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "/",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonsSetup(
                  text: "9",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "8",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "7",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "X",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonsSetup(
                  text: "6",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "5",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "4",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "-",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonsSetup(
                  text: "3",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "2",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "1",
                  fillcolor: 0xFFffa500,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "+",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback: buttonOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonsSetup(
                  text: "+/-",
                  fillcolor: 0xFF93c47d,
                  textColor: 0xFF000000,
                  textSize: 22,
                  callback: buttonOnClick,
                ),

                ButtonsSetup(
                  text: "0",
                  fillcolor: 0xFF93c47d,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "00",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
                ButtonsSetup(
                  text: "=",
                  fillcolor: 0xFFffd966,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: buttonOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
