import 'package:flutter/material.dart';

class StackClass extends StatefulWidget {
  const StackClass({Key? key}) : super(key: key);

  @override
  _StackClassState createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.green,
          ),
          Positioned(
              left: 50,
              top: 50,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(200)),
              )),
          Positioned(
              left: 100,
              top: 100,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(150)),
              )),
          Positioned(
              left: 150,
              top: 150,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(150)),
              )),
          Positioned(
              left: 200,
              top: 200,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
              )),
          Positioned(
              left: 225,
              top: 225,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(100)),
              )),
          Positioned(
              right: 1,
              bottom: -100,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red,
                    //borderRadius: BorderRadius.circular(100)
                  ),
              )),
          Positioned(
              right: 1,
              child: Container(
                height: 600,
                width: 20,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}
