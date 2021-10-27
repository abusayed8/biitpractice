import 'package:flutter/material.dart';

class NewList extends StatefulWidget {
  const NewList({Key? key}) : super(key: key);

  @override
  _NewListState createState() => _NewListState();
}

class _NewListState extends State<NewList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/back.jpg',
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bangladesh",
                          style: TextStyle(fontSize: 30,color: Colors.blue),
                        ),
                        Text(
                          "Bangladesh is a small Country",
                          style: TextStyle(fontSize: 15,color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
