import 'package:biitpractice/country_appfa/all_countries_details.dart';
import 'package:flutter/material.dart';

class AllCountriesClass extends StatefulWidget {
  String? continent;

  @override
  _AllCountriesClassState createState() => _AllCountriesClassState();

  AllCountriesClass({this.continent});
}

class _AllCountriesClassState extends State<AllCountriesClass> {
  List Country = [
    ['Bangladesh', 'images/Bangladesh.png', 'Taka', '16,00,00,000', 'Dhaka'],
    ['India', 'images/Bangladesh.png', 'Rupi', '132,00,00,000', 'New Delhi'],
    ['Pakisthan', 'images/Bangladesh.png', 'Rupi', '15,00,00,000', 'Islamabad'],
    [
      'Afganisthan',
      'images/Bangladesh.png',
      'Afgan Afgani',
      '10,00,00,000',
      'Kabul'
    ],
    ['Bangladesh', 'images/Bangladesh.png', 'Taka', '16,00,00,000', 'Dhaka'],
    ['India', 'images/Bangladesh.png', 'Rupi', '132,00,00,000', 'New Delhi'],
    ['Pakisthan', 'images/Bangladesh.png', 'Rupi', '15,00,00,000', 'Islamabad'],
    [
      'Afganisthan',
      'images/Bangladesh.png',
      'Afgan Afgani',
      '10,00,00,000',
      'Kabul'
    ],
    ['Bangladesh', 'images/Bangladesh.png', 'Taka', '16,00,00,000', 'Dhaka'],
    ['India', 'images/Bangladesh.png', 'Rupi', '132,00,00,000', 'New Delhi'],
    ['Pakisthan', 'images/Bangladesh.png', 'Rupi', '15,00,00,000', 'Islamabad'],
    [
      'Afganisthan',
      'images/Bangladesh.png',
      'Afgan Afgani',
      '10,00,00,000',
      'Kabul'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.continent}'),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: Country.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountryDetailsClass(
                          // countryName:Country[index][0],
                          // flag:Country[index][1],
                          // currency:Country[index][2],
                          // population:Country[index][3],
                          // capital:Country[index][4],
                        )));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Image.asset(Country[index][1]),
                    Text(Country[index][0]),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
