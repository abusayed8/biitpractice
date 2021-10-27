import 'package:flutter/material.dart';

class FlatButtonsClass extends StatefulWidget {
  const FlatButtonsClass({Key? key}) : super(key: key);

  @override
  _FlatButtonsClassState createState() => _FlatButtonsClassState();
}

class _FlatButtonsClassState extends State<FlatButtonsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB Button'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('data'),
        icon: Icon(Icons.access_alarm_sharp),
      ),
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => stack()));
      //     },
      //     color: Colors.blue,
      //     child: Text('Click'),
      //   ),
      // ),
    );
  }
}
