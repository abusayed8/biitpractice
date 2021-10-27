import 'package:flutter/material.dart';

class ContainereAndText extends StatefulWidget {
  const ContainereAndText({Key? key}) : super(key: key);

  @override
  _ContainereAndTextState createState() => _ContainereAndTextState();
}

class _ContainereAndTextState extends State<ContainereAndText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),

      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(10),

          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:BorderRadius.circular(10)

          ),


          child: Text('Container Widget And definition, (used to connect grammatically coordinate words, phrases, or clauses) along or together with; as well as; in addition to',
          style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w100,
              color: Colors.green),
            textAlign: TextAlign.justify,
          ),
        ),
      )
    );
  }
}

