import 'package:figures/models/figures.dart';
import 'package:flutter/material.dart';

class RectangleWidget extends StatelessWidget {
  const RectangleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rectangle"),
      ),
      body: OfRectangle(),
    );
  }
}

class OfRectangle extends StatefulWidget {
  
  
  OfRectangle({Key? key}) : super(key: key);

  @override
  _OfRectangleState createState() => _OfRectangleState();
}

class _OfRectangleState extends State<OfRectangle> {
  late var side1;
  late var side2;
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
        TextButton(
            child: Text("Button"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text("Rectangle"),
                        content: Text("Perimetr : ${RectangleClass(double.parse(side1),double.parse(side2)).calculatePerimetr()} \n Area : ${RectangleClass(double.parse(side1),double.parse(side2)).calculateArea()}"),
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
