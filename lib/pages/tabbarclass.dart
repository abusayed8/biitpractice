import 'package:biitpractice/pages/alertdialogclass.dart';
import 'package:biitpractice/pages/columclass.dart';
import 'package:biitpractice/pages/container_and_text.dart';
import 'package:biitpractice/pages/gridviewclass.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class TabBarClass extends StatefulWidget {
  const TabBarClass({Key? key}) : super(key: key);

  @override
  _TabBarClassState createState() => _TabBarClassState();
}

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(

          appBar: AppBar(

            title: Text('TabBar'),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.red,
              dragStartBehavior: DragStartBehavior.start,
              tabs: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black
                    )
                    
                  ),
                  child: Text('Home'),
                ),
                // Tab(
                //   text: 'Home',
                //   icon: Icon(Icons.home),
                // ),
                Tab(
                  text: 'Settings',
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: 'Home',
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: 'Settings',
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
            actions: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.menu)),
              Icon(Icons.account_balance),
              Icon(Icons.account_balance),
              Icon(Icons.account_balance),
            ],
          ),
          body: TabBarView(
              children: [
                GridViewClasss(),
                AlertDialogClass(),
                ContainereAndText(),
                ColumnsClasses(),

                // Container(
                //   color: Colors.red,
                //   child: Text('Red'),
                // ),
                // Container(
                //   color: Colors.blue,
                //   child: Text('Blue'),
                // ),
                // Container(
                //   color: Colors.yellow,
                //   child: Text('Yellow'),
                // ),
                // Container(
                //   color: Colors.green,
                //   child: Text('Green'),
                // ),

              ]),
        )
    );
  }
}
