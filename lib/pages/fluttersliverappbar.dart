import 'package:flutter/material.dart';

class FlutterSliverAppBar extends StatefulWidget {
  const FlutterSliverAppBar({Key? key}) : super(key: key);

  @override
  _FlutterSliverAppBarState createState() => _FlutterSliverAppBarState();
}

class _FlutterSliverAppBarState extends State<FlutterSliverAppBar> {
  List titleList=[
    'Tamim',
    'Sayem',
    'Fahim',
    'Mahmud Vai',
    'Saklin',
    'Rakib',
    'Abid',
    'Fahad'
  ];
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //title: Text('Sliver AppBar'),
            pinned: true,
            expandedHeight: size.height * 0.25,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sliver AppBar flx',
                style: TextStyle(
                    fontSize: size.height * 0.03),
              ),
              background: Image.asset(
                'images/plastic_surgery.png',
                fit: BoxFit.fill,
              ),
            ),

          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {

                return Card(
                    child: ListTile(
                      title: Text(titleList[index]),
                      subtitle: Text('_subtitle'),
                    ));
              },
                childCount: titleList.length,

              ),
          //     SliverChildListDelegate([
          //   CustomCard('One', 'This is One'),
          //   CustomCard('Two', 'This is Two'),
          //   CustomCard('Three', 'This is Three'),
          //   CustomCard('Four', 'This is Four'),
          //   CustomCard('Five', 'This is Five'),
          //   CustomCard('One', 'This is One'),
          //   CustomCard('Two', 'This is Two'),
          //   CustomCard('Three', 'This is Three'),
          //   CustomCard('Four', 'This is Four'),
          //   CustomCard('Five', 'This is Five'),
          //   CustomCard('One', 'This is One'),
          //   CustomCard('Two', 'This is Two'),
          //   CustomCard('Three', 'This is Three'),
          //   CustomCard('Four', 'This is Four'),
          //   CustomCard('Five', 'This is Five'),
          // ])
          )
        ],
      ),
    );
  }

  // Widget CustomCard(String _title, String _subtitle) {
  //   return Card(
  //       child: ListTile(
  //     title: Text(_title),
  //     subtitle: Text(_subtitle),
  //   ));
  // }
}
