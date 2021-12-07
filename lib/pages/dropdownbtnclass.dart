import 'package:flutter/material.dart';

class DropDownButtonClass extends StatefulWidget {
  const DropDownButtonClass({Key? key}) : super(key: key);

  @override
  _DropDownButtonClassState createState() => _DropDownButtonClassState();
}

class _DropDownButtonClassState extends State<DropDownButtonClass> {
  String dropdownValue = 'one';
  List<String> dropdownItem = ['one', 'two', 'three', 'four'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
            value: dropdownValue,
            items: dropdownItem.map((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(value,
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                        ))),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                dropdownValue = value!;
              });
            },
          ))),
    );
  }
}
