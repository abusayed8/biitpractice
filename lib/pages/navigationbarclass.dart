import 'package:biitpractice/pages/gridviewclass.dart';
import 'package:biitpractice/pages/listviewclasss.dart';
import 'package:flutter/material.dart';
class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarClassState createState() => _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
  @override
  int _currentIndex=0;
  List _currentPage=[
    GridViewClasss(),
    ListViewclasss(),
    GridViewClasss(),
    ListViewclasss(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
              title: Text('dfd'),
              backgroundColor: Colors.blueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
                title: Text('dfd'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
                title: Text('dfd'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance),
                title: Text('dfd'),
            ),

          ]),
      body: _currentPage[_currentIndex],
    );
  }
}
