import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewClasss extends StatefulWidget {
  const GridViewClasss({Key? key}) : super(key: key);

  @override
  _GridViewClasssState createState() => _GridViewClasssState();
}

class _GridViewClasssState extends State<GridViewClasss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            //mainAxisExtent: 300,
            childAspectRatio: 1.5
          ),
          itemCount: 10,
          itemBuilder: (context,index){
            return Card(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green
                ),
                child: Text('This is grid view builder'),
              ),
            );
          }
      ),

      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //         maxCrossAxisExtent: 200,
      //         childAspectRatio: 3 / 3,
      //         crossAxisSpacing: 20,
      //         mainAxisSpacing: 20
      //
      //     ),
      //
      //     itemCount: 20,
      //     itemBuilder: (context,index){
      //       return Container(
      //         color: Colors.red,
      //       );
      //     }
      // ),
    );
  }
}
