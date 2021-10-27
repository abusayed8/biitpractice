import 'package:biitpractice/pages/raisedbutton.dart';
import 'package:flutter/material.dart';
class listViewClass extends StatefulWidget {
  const listViewClass({Key? key}) : super(key: key);

  @override
  _listViewClassState createState() => _listViewClassState();
}

class _listViewClassState extends State<listViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View'),),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/plastic_surgery.png"),
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RaisedButtonss()));
            },
            title: Text('One'),
            subtitle: Text('01962518873'),
            leading: CircleAvatar(
              radius: 50,
              child: Text('One'),
            ),
            trailing: Icon(Icons.phone),

          ),
          Divider(),

        ],
      ),
    );
  }
}
