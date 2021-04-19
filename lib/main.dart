import 'package:flutter/material.dart';
//import 'button_widget/calculator_button.dart';
 
void main() {
  runApp(MyCalculator());
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalCulator ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCalculator(),
    );
  }
}



  class MyCalculator extends StatefulWidget {
    @override
    _MyCalculatorState createState() => _MyCalculatorState();
  }
  
  class _MyCalculatorState extends State<MyCalculator> {
  late int firstNumber;
 late int secondNumber;
String history="";
 String textDisplay="";
late String result;
late String operation;

  void btnOnClick(String btnVal){
     
      if(btnVal=='C'){
        textDisplay='';
        firstNumber =0;
        secondNumber =0;
        result="";
      }
      else if(btnVal=="AC"){
        textDisplay='';
        firstNumber =0;
        secondNumber =0;
        result='';
        history ='';
      }
      else if(btnVal=="+/-"){
    if (textDisplay[0]=='-' ){
      result ='-'+textDisplay;
    }
    else{
      result =textDisplay.substring(1);
       }
     }
        else if(btnVal=='Del'){
          result =textDisplay.substring(0,textDisplay.length-1);
      }

      else if ( btnVal=="+"||
       btnVal =="-"||
        btnVal == "X" ||
         btnVal=="/"
         ){
        firstNumber=int.parse(textDisplay);
        result="";
        operation =btnVal;


      }
      else if (btnVal=="="){
        secondNumber =int.parse(textDisplay);
        if(operation =='+'){

          result =(firstNumber+secondNumber).toString();
          history=firstNumber.toString()+operation.toString()+secondNumber.toString();
        }
         if(operation =='-'){

          result =(firstNumber-secondNumber).toString();
          history=firstNumber.toString()+operation.toString()+secondNumber.toString();
        }
         if(operation =='X'){

          result =(firstNumber * secondNumber).toString();
         history=firstNumber.toString()+operation.toString()+secondNumber.toString();
        }
         if(operation =='/'){

          result =(firstNumber / secondNumber).toString();
          history=firstNumber.toString()+operation.toString()+secondNumber.toString();
        }
      }
        else{
          result =int.parse(textDisplay+btnVal).toString();
        }
        setState(() {
          textDisplay=result;
        });



      
  }
  Widget calculatorbtn (String btnVal){
   return Expanded(
          child: OutlineButton(

            padding: EdgeInsets.all(25.0),
            onPressed: ()=>btnOnClick(btnVal),
            child: Text("$btnVal",
            style: TextStyle(
              fontSize:25.0,
              color: Colors.teal,
            ),
            ),
          ),
   );

  }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "Flutter Calculator",
        theme: ThemeData(primaryColor:Colors.teal ) ,
   home : Scaffold(
     appBar:AppBar(
      title : Text('Flutter Calculator'),

     ),
     body: Container( 
       color: Colors.white,       
          child: Column(
            mainAxisAlignment:MainAxisAlignment.end,

            children: [
              Expanded(
              child:Container(
                child:Padding(
                  padding: EdgeInsets.all(12),
                    child:Text(
                      "$history",
                      style: TextStyle(
                        fontSize:18,
                         color: Colors.black
                         ),
                         ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              ),
              Expanded(
              child:Container(
                child:Padding(
                  padding: EdgeInsets.all(12),
                    child:Text(
                      "$textDisplay",
                      style: TextStyle(
                        fontSize:32,
                         color: Colors.black
                         ),
                         ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 calculatorbtn( 'AC'),
                 calculatorbtn( 'C'),
                 calculatorbtn( 'Del'),
                 calculatorbtn('/'),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 calculatorbtn( '9'),
                 calculatorbtn( '8',),
                 calculatorbtn( '7',),
                 calculatorbtn( 'X',),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 calculatorbtn( '6'),
                 calculatorbtn( '5'),
                 calculatorbtn( '4'),
                 calculatorbtn( '-' ),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 calculatorbtn('3'),
                 calculatorbtn( '2'),
                 calculatorbtn( '1'),
                 calculatorbtn( '+'),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 calculatorbtn( '+/-'),
                 calculatorbtn( '0'),
                 calculatorbtn( '00'),
                 calculatorbtn( '='),
                ],
              ),
             
            ],
          ),
         
     ),
   ),
      );
    }
  }

  