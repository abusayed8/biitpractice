import 'package:biitpractice/pages/countryappsliverappbar/all_countries.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Continent = [
    ['Asia', 'images/back.jpg'],
    ['Europ', 'images/back.jpg'],
    ['Africa', 'images/back.jpg'],
    ['North America', 'images/back.jpg'],
    ['South America', 'images/back.jpg'],
    ['Oceania', 'images/back.jpg'],
    ['Antertica', 'images/back.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            //collapsedHeight: 100,
            toolbarHeight: 80,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('sliver App'),
              background: Image.asset(
                'images/plastic_surgery.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllCountriesClass(
                                continent: Continent[index][0])));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Continent[index][1]),
                            fit: BoxFit.fill)),
                    alignment: Alignment.center,
                    child: Text(
                      Continent[index][0],
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: Continent.length,
            ),
          ),
        ],
      ),
    );
  }
}
