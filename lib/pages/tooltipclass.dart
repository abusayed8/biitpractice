import 'package:flutter/material.dart';

class TooltipClass extends StatefulWidget {
  const TooltipClass({Key? key}) : super(key: key);

  @override
  _TooltipClassState createState() => _TooltipClassState();
}

class _TooltipClassState extends State<TooltipClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ToolTip'), centerTitle: true,),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.red,
          child: Tooltip(
              message: 'Profile',
            height: 100,
            waitDuration: Duration(microseconds: 500),
            showDuration: Duration(seconds: 500),
            child: Icon(
              Icons.account_box,
              size:100
            ),
          ),
        ),
      ),
    );
  }
}
