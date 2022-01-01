import 'package:flutter/material.dart';
// void hTextStyle(){
//   return TextStyle(
//   )
// }
Widget Heading(String headigTxt,double hTxtSize,double hWidth, Color hColor,Color hTxtColor){
  return Container(
    width: hWidth,
    margin: EdgeInsets.only(bottom: 10,top: 10),
    padding: EdgeInsets.all(10),
    color: hColor,
    child: Text(headigTxt,style: TextStyle(fontSize:hTxtSize,color: hTxtColor, ),),
  );
}