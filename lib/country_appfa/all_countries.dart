import 'package:biitpractice/country_appfa/all_countries_details.dart';
import 'package:biitpractice/country_appfa/data_class.dart';
import 'package:flutter/material.dart';

class CountryListView extends StatefulWidget {

  String? appBarTitle;
  Color? appBarColor;
  Color? bgColor;
  Color? textColor;
  CountryListView({this.appBarTitle, this.appBarColor, this.bgColor, this.textColor});
  //const CountryListView({Key? key}) : super(key: key);

  @override
  _CountryListViewState createState() => _CountryListViewState();
}

class _CountryListViewState extends State<CountryListView> {

  List<Country>? countries;
  List<Country>? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    countries = [];

    if(widget.appBarTitle == DataBase.homepageContents[0]){
      countries = List.from(DataBase.countries);
    }
    else if(widget.appBarTitle == DataBase.homepageContents[2]){
      countries = DataBase.countries.where((element) => (element.isFavorite == true) ).toList();
    }
    else if(widget.appBarTitle == DataBase.homepageContents[3]){
      countries = DataBase.countries.where((element) => (element.countryRegion == region.Asia) ).toList();
    }
    else if(widget.appBarTitle == DataBase.homepageContents[4]){
      countries = DataBase.countries.where((element) => (element.countryRegion == region.Europe) ).toList();
    }
    else if(widget.appBarTitle == DataBase.homepageContents[7]){
      countries = DataBase.countries.where((element) => (element.countryRegion == region.North_America) ).toList();
    }
    else if(widget.appBarTitle == DataBase.homepageContents[8]){
      countries = DataBase.countries.where((element) => (element.countryRegion == region.South_America) ).toList();
    }
    else if(widget.appBarTitle == DataBase.homepageContents[9]){
      countries = DataBase.countries.where((element) => (element.countryRegion == region.Africa) ).toList();
    }
    else if(widget.appBarTitle == DataBase.homepageContents[10]){
      countries = DataBase.countries.where((element) => (element.countryRegion == region.Oceania) ).toList();
    }


    countries!.sort((a, b) => a.name!.compareTo(b.name!));

    for(var i = 0; i < countries!.length; i++){
      if(countries![i].flagLink == ''){
        countries![i].flagLink = 'images/no_image.png';
      }
      if(countries![i].language == ''){
        countries![i].language = 'Will be added soon!!';
      }
    }

    data = List.from(countries!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.appBarTitle}'),
        centerTitle: true,
        backgroundColor: widget.appBarColor,
      ),
      body: Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        color: widget.bgColor,
        child: Column(
          children: [
            TextField(
              // keyboardType: TextInputType.number,
              obscureText: false,
              style: TextStyle(color: widget.textColor),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Scarch Here...',
                hintStyle: TextStyle(color: widget.textColor),
              ),
              onChanged: (input){
                setState(() {
                  data = countries!.where((element) => (element.name!.toLowerCase().contains(input.toLowerCase()))).toList();
                });
              },
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListViewer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListViewer(){
    if(data!.length != 0){
      return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index){
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey[700],
                child: ListTile(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CountryDetailsClass(
                          countryDetails: data![index],
                          appBarColor: widget.appBarColor,
                          bgColor: widget.bgColor,
                        ))
                    );
                  },
                  leading: LoadImage('${data![index].flagLink}'),
                  title: Text('${data![index].name}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  subtitle: Text('${data![index].capital}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  trailing: IconButton(
                      onPressed: (){
                        setState(() {
                          data![index].isFavorite = !data![index].isFavorite;
                        });
                      },
                      icon: FavoriteBtn(index)),
                ),
              );
            }
        ),
      );
    }
    return Center(child: Container(
      child: Text("Nothing to show."),
    ));
  }

  Widget FavoriteBtn(index){
    if(data![index].isFavorite){
      return Icon(Icons.favorite, color: Colors.white,);
    }
    return Icon(Icons.favorite_border, color: Colors.white,);
  }

  Widget LoadImage(String address){
    if(address.contains('https')){
      return Image.network(address, fit: BoxFit.fill,
        // width: 200, height: 200,
      );
    }
    return Image.asset(address, fit: BoxFit.fill,
      // width: 200, height: 200,
    );
  }
}
