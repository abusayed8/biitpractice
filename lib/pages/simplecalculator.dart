import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  String equation='0';
  String result='0';
  String expression='';


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title:Text('Calculator'),centerTitle: true,),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: size.width*0.07,vertical: size.width*0.09),
            alignment: Alignment.centerRight,
            child: Text(equation,style: TextStyle(fontSize: size.width*0.15),maxLines: 1,),
          ),
          Divider(),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: size.width*0.07,vertical: size.width*0.09),
            alignment: Alignment.centerRight,
            child: Text(result,style: TextStyle(fontSize: size.width*0.13),maxLines: 1,),
          ),
          Divider(),
          Row(
            children: [
              Container(
                width: size.width*.75,
                //color: Colors.green,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildBtn('C',1.0,Colors.red,Colors.white),
                        buildBtn('AC',1.0,Colors.blue,Colors.white),
                        buildBtn('÷',1.0,Colors.blue,Colors.white),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('7',1.0,Colors.blue,Colors.white),
                          buildBtn('8',1.0,Colors.blue,Colors.white),
                          buildBtn('9',1.0,Colors.blue,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('4',1.0,Colors.blue,Colors.white),
                          buildBtn('5',1.0,Colors.blue,Colors.white),
                          buildBtn('6',1.0,Colors.blue,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('1',1.0,Colors.blue,Colors.white),
                          buildBtn('2',1.0,Colors.blue,Colors.white),
                          buildBtn('3',1.0,Colors.blue,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('.',1.0,Colors.blue,Colors.white),
                          buildBtn('0',1.0,Colors.blue,Colors.white),
                          buildBtn('00',1.0,Colors.blue,Colors.white),
                        ]
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width*.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildBtn('×',1.0,Colors.blue,Colors.white),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('-',1.0,Colors.blue,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('+',1.0,Colors.blue,Colors.white),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildBtn('=',2.0,Colors.red,Colors.white),
                        ]
                    ),
                  ],
                ),
              )

            ],
          )

        ],
      ),


    );
  }

  Widget buildBtn(String btnText,double btnHeight,Color btnColor,Color shapColor){
    Size size=MediaQuery.of(context).size;
    return Container(

      height: size.height*.1*btnHeight,

      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(60)
      ),
      child: FlatButton(
        onPressed: (){
          setState(() {
            if(btnText=='C'){
              equation='0';
              result='0';
            }
            else if(btnText=='AC'){
              equation=equation.substring(0,equation.length-1);
              if(equation==''){
                equation='0';
              }
            }
            else if(btnText=='='){
              expression=equation;
              expression=expression.replaceAll('×', '*');
              expression=expression.replaceAll('÷', '/');
              try{
                Parser p=Parser();
                Expression exp=p.parse(expression);
                ContextModel cm=ContextModel();
                result='${exp.evaluate(EvaluationType.REAL, cm)}';
              }catch(e){
                result='error';
              }
            }
            else{

              if(equation=='0'){
                equation=btnText;
              }
              else
                {
                  equation+=btnText;
                }
            }

          });
        },
        child: Text(btnText,style: TextStyle(fontSize: size.width*0.07),),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: shapColor,
                width: 1,
                style: BorderStyle.solid
            )
        ),

      ),
    );
  }
}
