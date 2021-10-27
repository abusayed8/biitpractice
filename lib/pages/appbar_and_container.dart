import 'package:flutter/material.dart';
class AppbarAndContainer extends StatefulWidget {
  const AppbarAndContainer({Key? key}) : super(key: key);

  @override
  _AppbarAndContainerState createState() => _AppbarAndContainerState();
}

class _AppbarAndContainerState extends State<AppbarAndContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        leading: Icon(Icons.account_balance),
        centerTitle: true,
      ),

      body: Container(
        height: 200,
        width: 500,
        alignment: Alignment.center,

        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.black,
            width: 10
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.green,
              offset: Offset.zero,
              blurRadius: 10,
              spreadRadius: 100
            )
          ],

        ),

        child: Text('This is container Founded on the principle “Customer-Commitment-Technology',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          wordSpacing: 10

        ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
