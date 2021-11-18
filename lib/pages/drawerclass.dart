import 'package:biitpractice/pages/gridviewclass.dart';
import 'package:flutter/material.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.home),
              itemBuilder: (BuildContext cntx)=>[

                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
              ]
          ),
          PopupMenuButton(
              icon: Icon(Icons.home),
              itemBuilder: (BuildContext cntx)=>[

                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
              ]
          ),
          PopupMenuButton(
              icon: Icon(Icons.home),
              itemBuilder: (BuildContext cntx)=>[

                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
                PopupMenuItem(
                    child: Text('Settings')
                ),
              ]
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset(
                  'images/education.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
                accountName: Text('Mim'),
                accountEmail: Text('mim@gmail.com')),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                title: Text('Home'),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GridViewClasss()));
                },
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
