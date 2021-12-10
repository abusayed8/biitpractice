import 'package:flutter/material.dart';

class FlutterSearchBar extends StatefulWidget {
  const FlutterSearchBar({Key? key}) : super(key: key);

  @override
  _FlutterSearchBarState createState() => _FlutterSearchBarState();
}

class _FlutterSearchBarState extends State<FlutterSearchBar> {
  List<String> student = [
    'Fahad',
    'Fahim',
    'Mim',
    'Shanto',
    'Lafia',
    'Saklain',
    'Mostak',
    'Sayem',
    'Nayon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchBar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            //keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Search by name...',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
            ),
            onChanged: (String searchStudent){
              setState(() {
                student=student.where((element) => (
                    element.toLowerCase().contains(searchStudent.toLowerCase())
                )).toList();
              });
            },
            
          ),
          Expanded(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
                itemCount: student.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(student[index]),
                      subtitle: Text('${student[index]} Lafia is a motamuti boy'),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
