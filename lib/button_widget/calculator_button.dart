// import 'package:flutter/material.dart';



// class Calculatorbtn extends StatelessWidget {
    
//     final String text;
//     // final int fillColor;
//     // final int textColor;
//     // final double textSize;
//     final Function callback;

//     const Calculatorbtn({

//         required this.text,
//         // required this.fillColor,
//         // required this.textColor,
//         // required this.textSize,
//           required this.callback,
         
//     });
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//                     padding: EdgeInsets.all(5),
//                     margin:EdgeInsets.all(8),
//                     child: SizedBox(
//                       width: 45,
//                       height: 45,
                      
//                       child:FlatButton(
                        
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(6.0),
//                         ),
                       
//                         child: Text(text,
                       
//                         style: TextStyle(
//                           fontSize: 20,
//                         ),
//                         ),
//                          onPressed: ()=>callback(text),
//                          color: Colors.blue,
//                          textColor: Colors.yellow
//                       ),
//                       ),

//                     );
                  
  
//              }
  
//           }