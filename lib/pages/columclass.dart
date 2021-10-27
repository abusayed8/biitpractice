import 'package:flutter/material.dart';
class ColumnsClasses extends StatefulWidget {
  const ColumnsClasses({Key? key}) : super(key: key);

  @override
  _ColumnsClassesState createState() => _ColumnsClassesState();
}

class _ColumnsClassesState extends State<ColumnsClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),centerTitle: true,
      ),

      body:SingleChildScrollView(
        child:  Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),           Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
