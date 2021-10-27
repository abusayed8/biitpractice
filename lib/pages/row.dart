import 'package:flutter/material.dart';
class row extends StatefulWidget {
  const row({Key? key}) : super(key: key);

  @override
  _rowState createState() => _rowState();
}

class _rowState extends State<row> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(
              width: 15,
              child: Container(
                color: Colors.black54,
                height: 200,
              ),
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
