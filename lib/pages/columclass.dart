import 'package:flutter/material.dart';
class ColumnsClasses extends StatefulWidget {
  const ColumnsClasses({Key? key}) : super(key: key);

  @override
  _ColumnsClassesState createState() => _ColumnsClassesState();
}

class _ColumnsClassesState extends State<ColumnsClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),centerTitle: true,
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(bottom: 10,top:10,left: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:SingleChildScrollView(
                        child:  Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 8),
                              color: Colors.blue,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 8),
                              color: Colors.blue,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 8),
                              color: Colors.blue,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 8),
                              color: Colors.blue,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 8),
                              color: Colors.blue,
                            ),

                          ],
                        ),
                      ),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(bottom: 10,top:10,left: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(bottom: 10,top:10,left: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(bottom: 10,top:10,left: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(bottom: 10,top:10,left: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(bottom: 10,top:10,left: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Mehedi is a BC'),

                    ),
                  ],
                ),
              ),

            ),


          ],
        ),
      )
    );
  }
}
