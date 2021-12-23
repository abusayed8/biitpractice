import 'package:biitpractice/country_appfa/all_countries.dart';
import 'package:biitpractice/country_appfa/data_class.dart';
import 'package:flutter/material.dart';

class HomePageess extends StatefulWidget {
  const HomePageess({Key? key}) : super(key: key);

  @override
  _HomePageessState createState() => _HomePageessState();
}

class _HomePageessState extends State<HomePageess> {

  Color? appbarColor = Colors.deepPurple[900];
  Color? bgColor;
  Color? textColor;
  bool darkMode = false;

  List<String>? homepageContents;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homepageContents = List.from(DataBase.homepageContents);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: Text("Country Capital Currency"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: bgColor,
          child: ListView(
            children: [
              ListTile(
                title: Text('Privacy Policy', style: TextStyle(color: textColor),),
              ),
              ListTile(
                title: Text('Rate this App', style: TextStyle(color: textColor),),
              ),
              ListTile(
                title: Text('Share', style: TextStyle(color: textColor),),
              ),
              ListTile(
                title: Text('Settings', style: TextStyle(color: textColor),),
              ),
              ListTile(
                onTap: DarkModeToggle,
                title: Text('Toggle Dark Mode', style: TextStyle(color: textColor),),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: bgColor
        ),
        child: ListView.builder(
            itemCount: homepageContents!.length,
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
                        MaterialPageRoute(builder: (context) => CountryListView(
                          appBarTitle: homepageContents![index],
                          appBarColor: appbarColor,
                          bgColor: bgColor,
                          textColor: textColor,
                        ))
                    );
                  },
                  title: Center(child: Text(homepageContents![index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              );
            }
        ),
      ),
    );
  }

  void DarkModeToggle(){
    setState(() {
      darkMode = !darkMode;
      if(darkMode){
        bgColor = Colors.black;
        textColor = Colors.white;
      }
      else{
        bgColor = Colors.white;
        textColor = Colors.black;
      }
    });
  }
}
