import 'package:flutter/material.dart';
class CountryDetailsClass extends StatefulWidget {
  String? countryName;
  String? flag;
  String? currency;
  String? population;
  String? capital;

  @override
  _CountryDetailsClassState createState() => _CountryDetailsClassState();

  CountryDetailsClass(
      {this.countryName,
      this.flag,
      this.currency,
      this.population,
      this.capital});
}

class _CountryDetailsClassState extends State<CountryDetailsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black, 
      appBar:AppBar(title:Text('${widget.countryName}'),centerTitle: true,),
      body: Column(
        children: [
          Image.asset('${widget.flag}',height: 300,width: double.infinity,fit: BoxFit.fill,),
          SizedBox(height: 5,),
          Container(
            width: double.infinity,
            height: 340,
            padding:EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 5,
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Country : ${widget.countryName}',style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 20,),
                Text('Capital : ${widget.capital}',style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 20,),
                Text('Currency : ${widget.currency}',style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 20,),
                Text('Population : ${widget.population}',style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
