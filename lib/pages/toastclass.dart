import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastClass extends StatefulWidget {
  const ToastClass({Key? key}) : super(key: key);

  @override
  _ToastClassState createState() => _ToastClassState();
}

class _ToastClassState extends State<ToastClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toast'),centerTitle: true,),
      body: Center(
        child: RaisedButton(
            onPressed: (){
              Fluttertoast.showToast(
                  msg: 'this is toast',
                  timeInSecForIosWeb: 1
              );
            },
        child: Text('Toast'),
        ),
      ),
    );
  }
}
