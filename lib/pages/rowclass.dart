import 'package:biitpractice/pages/listviewclasss.dart';
import 'package:flutter/material.dart';
class RowClass extends StatefulWidget {
  const RowClass({Key? key}) : super(key: key);

  @override
  _RowClassState createState() => _RowClassState();
}

class _RowClassState extends State<RowClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Class'),centerTitle: true,),


      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewclasss())),
              child: Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ],
        ),
      )
    );
  }
}
