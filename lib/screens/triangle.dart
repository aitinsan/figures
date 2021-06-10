import 'package:figures/models/figures.dart';
import 'package:flutter/material.dart';

class TriangleWidget extends StatelessWidget {
  const TriangleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Triangle"),
      ),
      body: OfTriangle(),
    );
  }
}

class OfTriangle extends StatefulWidget {
 
  
  OfTriangle({Key? key}) : super(key: key);

  @override
  _OfTriangleState createState() => _OfTriangleState();
}

class _OfTriangleState extends State<OfTriangle> {
  late var side1;
  late var side2;
  late var side3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("First side:"),
        TextField(
            decoration: InputDecoration(hintText: 'First side'),
            onChanged: (String value) {
              side1 = value;
              print(side1);
            }),
        Text("Second side:"),
        TextField(
            decoration: InputDecoration(hintText: 'Second side'),
            onChanged: (String value) {
              side2 = value;
              print(side2);
            }),
        Text("Third side:"),
        TextField(
            decoration: InputDecoration(hintText: 'Third side'),
            onChanged: (String value) {
              side3 = value;
              print(side3);
            }),
        TextButton(
            child: Text("Button"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text("Triangle"),
                        content: Text("Perimetr : ${TriangleClass(double.parse(side1),double.parse(side2),double.parse(side3)).calculatePerimetr()} \n Area : ${TriangleClass(double.parse(side1),double.parse(side2),double.parse(side3)).calculateArea()}"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ]);
                  });
            })
      ],
    );
  }
}
