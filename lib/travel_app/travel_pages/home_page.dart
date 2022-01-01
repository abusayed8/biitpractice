import 'package:flutter/material.dart';
import 'package:october10_2021/countryappsliverappbar/country_details.dart';
import 'package:october10_2021/travel_app/widgets/appbar_design.dart';

class TravelHome extends StatefulWidget {
  const TravelHome({Key? key}) : super(key: key);

  @override
  _TravelHomeState createState() => _TravelHomeState();
}

class _TravelHomeState extends State<TravelHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDesign('HomePage'),
      body: _bodyUI(),
    );
  }

  Widget _bodyUI() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            color: Colors.green,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  size: 50,
                  color: Colors.white,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Travel Guide',
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    Text('Travel Guide all information',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                )
              ],
            ),
          ),
          GridView.custom(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 120),
              childrenDelegate: SliverChildListDelegate(
                [
                  _customCard('Traveling Bangladesh', Icons.my_location_sharp),
                  _customCard('Foreign Travel', Icons.my_location_sharp),
                  _customCard('Travel Blog', Icons.my_location_sharp),
                  _customCard('Popular Place', Icons.my_location_sharp),
                  _customCard('Video', Icons.my_location_sharp),
                  _customCard('Savings Information', Icons.my_location_sharp),
                ],
              ))
        ],
      ),
    );
  }

  Widget _customCard(String cardText, IconData cardIcon) {
    return InkWell(
        onTap: () {
          cardText == 'Traveling Bangladesh'
              ? {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CountryDetailsClass()))
                }
              : cardText == 'Foreign Travel'
                  ? {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CountryDetailsClass()))
                    }
                  : cardText == 'Travel Blog'
                      ? {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CountryDetailsClass()))
                        }
                      : cardText == 'Popular Place'
                          ? {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CountryDetailsClass()))
                            }
                          : cardText == 'Video'
                              ? {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CountryDetailsClass()))
                                }
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CountryDetailsClass()));
        },
        child: Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              cardIcon,
              color: Colors.green,
            ),
            SizedBox(height: 8),
            Text(
              cardText,
              style: TextStyle(color: Colors.green),
            )
          ]),
        ));
  }
}
