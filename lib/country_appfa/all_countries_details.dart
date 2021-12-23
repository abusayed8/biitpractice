import 'package:biitpractice/country_appfa/data_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryDetailsClass extends StatefulWidget {

  Country? countryDetails;
  Color? appBarColor;
  Color? bgColor;

  CountryDetailsClass({this.countryDetails, this.appBarColor, this.bgColor});
  //const CountryDetailsClass({Key? key}) : super(key: key);

  @override
  _CountryDetailsClassState createState() => _CountryDetailsClassState();
}

class _CountryDetailsClassState extends State<CountryDetailsClass> {

  String? countryName;
  String? countryCapital;
  String? countryCurrency;
  String? countryLanguage;
  String? countryFlag;
  String? countryRegion;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryName = widget.countryDetails!.name;
    countryCapital = widget.countryDetails!.capital;
    countryFlag = widget.countryDetails!.flagLink;
    countryCurrency = widget.countryDetails!.currency;
    countryLanguage = widget.countryDetails!.language;

    if(widget.countryDetails!.countryRegion == region.Asia){
      countryRegion = "Asia";
    }
    else if(widget.countryDetails!.countryRegion == region.Europe){
      countryRegion = "Europe";
    }
    else if(widget.countryDetails!.countryRegion == region.Oceania){
      countryRegion = "Oceania";
    }
    else if(widget.countryDetails!.countryRegion == region.Africa){
      countryRegion = "Africa";
    }else if(widget.countryDetails!.countryRegion == region.South_America){
      countryRegion = "South America";
    }
    else if(widget.countryDetails!.countryRegion == region.North_America){
      countryRegion = "North America";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(countryName!),
        backgroundColor: widget.appBarColor,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[900],
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: LoadImage(countryFlag!),
              ),
            ),
          ),
          Expanded(
            child: Container(

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              color: widget.bgColor,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  children: [
                    ListTile(
                      title: Center(
                        child: Text(countryName!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      trailing: IconButton(onPressed: BtnFunction, icon: FavoriteBtn()),
                    ),
                    CustomListTile(countryCapital!, "Capital", Icons.apartment),
                    CustomListTile(countryCurrency!, "Currency", Icons.monetization_on),
                    CustomListTile(countryLanguage!, "Language", Icons.vpn_lock_sharp),
                    CustomListTile(countryRegion!, "Continent", Icons.location_on),
                    CustomListTile(countryRegion!, "Continent", Icons.location_on),
                    CustomListTile(countryRegion!, "Continent", Icons.location_on),
                    CustomListTile(countryRegion!, "Continent", Icons.location_on),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget FavoriteBtn(){
    if(widget.countryDetails!.isFavorite){
      return Icon(Icons.favorite, color: Colors.white,);
    }
    return Icon(Icons.favorite_border, color: Colors.white,);
  }

  void BtnFunction(){
    setState(() {
      widget.countryDetails!.isFavorite = !widget.countryDetails!.isFavorite;
    });
  }

  Widget LoadImage(String address){
    if(address.contains('https')){
      return Image.network(address, fit: BoxFit.fill, width: 200, height: 200,);
    }
    return Image.asset(address, fit: BoxFit.fill, width: 200, height: 200,);
  }

  Widget CustomListTile(String titleText, String subtitleText, IconData tileIcon){
    return ListTile(
      leading: Icon(tileIcon, color: Colors.white,),
      title: Text(titleText, style: TextStyle(color: Colors.white)),
      subtitle: Text(subtitleText, style: TextStyle(color: Colors.white)),
    );
  }
}
