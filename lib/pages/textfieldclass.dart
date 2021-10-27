import 'package:biitpractice/pages/listviewclass.dart';
import 'package:flutter/material.dart';

class TextFieldClass extends StatefulWidget {
  const TextFieldClass({Key? key}) : super(key: key);

  @override
  _TextFieldClassState createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          label: Text('Compose'),
        icon: Icon(Icons.add),
        //child: Text('Composebbbbbbbbbbbbbbbbb'),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => textbtn()));
      //   },
      //   child: Icon(Icons.add),
      //
      // ),

      // floatingActionButton: FloatingActionButton.(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => stack()));
      //   },
      //   child: Icon(Icons.add),
      // ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
                'images/back.jpg',
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 7,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                fit: BoxFit.fill,
              ),

              SizedBox(
                height: 10,
              ),
              Image.network(
                "https://picsum.photos/250?image=9", height: MediaQuery
                  .of(context)
                  .size
                  .height / 10,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                fit: BoxFit.fill,),

              // Image.network(
              //   'https://picsum.photos/250?image=9',
              //   fit: BoxFit.fill,
              //   width: MediaQuery.of(context).size.width,
              //   height: 200,
              // ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 5)),
                    fillColor: Colors.blueGrey,
                    filled: true),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  //hintText: 'Name',
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 5)),
                    fillColor: Colors.blueGrey,
                    filled: true),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => listViewClass()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('Log In'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // FlatButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => stack()));
              //     },
              //     // color: Colors.green,
              //     // hoverColor: Colors.blue,
              //     child: Text('Flat Button')),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => listViewClass()));
                },
                // color: Colors.blue,
                // splashColor: Colors.red,
                child: Text("Raised Button"),
              )
              // GestureDetector(
              //   onTap: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>listViewClass()));
              //   },
              //
              //   child: Container(
              //     height: 50,
              //     width: MediaQuery.of(context).size.width/3,
              //
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //         color: Colors.blue, borderRadius: BorderRadius.circular(5)),
              //     child: Text(
              //       'Login Now',
              //       style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
            ]),
          )),
    );
  }
}
