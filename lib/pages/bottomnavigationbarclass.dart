import 'package:biitpractice/pages/columclass.dart';
import 'package:biitpractice/pages/container_and_text.dart';
import 'package:flutter/material.dart';
class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarClassState createState() => _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
  var _curIndex=0;
  List _curPage=[
    ColumnsClasses(),
    ContainereAndText(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navogation Bar'),centerTitle: true,),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curIndex,
          onTap: (int index){
          setState(() {
            _curIndex=index;
          });
          },
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(

                icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings'
            ),
          ]
      ),
      body: _curPage[_curIndex],
    );
  }
}
