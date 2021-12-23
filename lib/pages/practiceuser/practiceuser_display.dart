import 'package:biitpractice/pages/practiceuser/practiceuser_data.dart';
import 'package:biitpractice/pages/practiceuser/practiceuser_model.dart';
import 'package:flutter/material.dart';
class PracticeDisplay extends StatefulWidget {
  const PracticeDisplay({Key? key}) : super(key: key);

  @override
  _PracticeDisplayState createState() => _PracticeDisplayState();
}

class _PracticeDisplayState extends State<PracticeDisplay> {
  List <PracticeUser> practiceusers=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    practiceusers=GetPracticeUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: practiceusers.length,
          itemBuilder: (context,index){
            return Card(
                child:ListTile(
                 title:Text('${practiceusers[index].name}'),
                 subtitle:Text('${practiceusers[index].id}'),
                )
            );
          }
      ),
    );
  }
}
