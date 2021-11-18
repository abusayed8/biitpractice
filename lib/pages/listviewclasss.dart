import 'package:flutter/material.dart';

class ListViewclasss extends StatefulWidget {
  const ListViewclasss({Key? key}) : super(key: key);

  @override
  _ListViewclasssState createState() => _ListViewclasssState();
}

class _ListViewclasssState extends State<ListViewclasss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          ListTile(
            title: Text('Abdul Motin'),
            subtitle: Text('Abdul Motin is a good boy'),
            leading: Image.asset('images/education.png'),
            trailing: Icon(Icons.volume_mute),

          ),
          Divider(),
          ListTile(
            title: Text('Abdul Motin'),
            subtitle: Text('Abdul Motin is a good boy'),
            leading: Image.asset('images/education.png'),
            trailing: Icon(Icons.volume_mute),

          ),
          Divider(),
          ListTile(
            title: Text('Abdul Motin'),
            subtitle: Text('Abdul Motin is a good boy'),
            leading: Image.asset('images/education.png'),
            trailing: Icon(Icons.volume_mute),

          ),
          Divider(),
        ],
      ),
    );
  }
}
