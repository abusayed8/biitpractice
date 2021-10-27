import 'package:biitpractice/pages/stackclass.dart';
import 'package:flutter/material.dart';

class RaisedButtonss extends StatefulWidget {
  const RaisedButtonss({Key? key}) : super(key: key);

  @override
  _RaisedButtonssState createState() => _RaisedButtonssState();
}
class _RaisedButtonssState extends State<RaisedButtonss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raised Button'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StackClass()));
          },
          color: Colors.red,
          child: Text('Click Here'),
        ),
      ),
    );
  }
}
