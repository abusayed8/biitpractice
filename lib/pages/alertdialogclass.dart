import 'package:flutter/material.dart';

class AlertDialogClass extends StatefulWidget {
  const AlertDialogClass({Key? key}) : super(key: key);

  @override
  _AlertDialogClassState createState() => _AlertDialogClassState();
}

class _AlertDialogClassState extends State<AlertDialogClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Alert'),
                    content: Text('Are sure delete this'),

                  );
                }
            );
          },
          color: Colors.blue,
          child: Text('Delete'),
        ),
      ),
    );
  }
}
