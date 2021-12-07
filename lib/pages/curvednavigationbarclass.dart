import 'package:biitpractice/pages/fluttersliverappbar.dart';
import 'package:biitpractice/pages/gridviewclass.dart';
import 'package:biitpractice/pages/imagepickerclass.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class CurvedNavigstionBarClasss extends StatefulWidget {
  const CurvedNavigstionBarClasss({Key? key}) : super(key: key);

  @override
  _CurvedNavigstionBarClasssState createState() => _CurvedNavigstionBarClasssState();
}

class _CurvedNavigstionBarClasssState extends State<CurvedNavigstionBarClasss> {
    int _curIndex=0;
  List _pages=[
    ImagePickerClass(),
    FlutterSliverAppBar(),
    GridViewClasss(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Curved Navigation bar'),centerTitle: true,),
      bottomNavigationBar: CurvedNavigationBar(

        index:_curIndex,

        onTap: (index){
          setState(() {
            _curIndex=index;
          });
        },

        color: Colors.blue,
          backgroundColor: Colors.red,
          buttonBackgroundColor: Colors.blue,
          animationDuration: Duration(seconds: 1),
          items: [
            Icon(Icons.home),
            Icon(Icons.camera_alt),
            Icon(Icons.menu),
          ]
      ),
      body: _pages[_curIndex],
    );
  }
}
