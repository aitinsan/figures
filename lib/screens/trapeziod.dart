import 'package:figures/models/figures.dart';
import 'package:flutter/material.dart';

class TrapezoidWidget extends StatelessWidget {
  const TrapezoidWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trapezoid"),
      ),
      body: OfTrapezoid(),
    );
  }
}

class OfTrapezoid extends StatefulWidget {
  
  OfTrapezoid({Key? key}) : super(key: key);

  @override
  _OfTrapezoidState createState() => _OfTrapezoidState();
}

class _OfTrapezoidState extends State<OfTrapezoid> {
  late var side1;
  late var side2;
  late var side3;
  late var side4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("First side:"),
        TextField(
            decoration: InputDecoration(hintText: 'First side Parallel'),
            onChanged: (String value) {
              side1 = value;
              //print(side1);
            }),
        Text("Second side:"),
        TextField(
            decoration: InputDecoration(hintText: 'Second side Parallel'),
            onChanged: (String value) {
              side2 = value;
              //print(side2);
            }),
        Text("Third side:"),
        TextField(
            decoration: InputDecoration(hintText: 'Third side border'),
            onChanged: (String value) {
              side3 = value;
              //print(side3);
            }),
        Text("Fourth side:"),
        TextField(
            decoration: InputDecoration(hintText: 'Forth side border'),
            onChanged: (String value) {
              side4 = value;
              //print(side4);
            }),
        TextButton(
            child: Text("Button"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text("Trapezoid"),
                        content: Text("Perimetr : ${TrapezoidClass(double.parse(side1),double.parse(side2),double.parse(side3),double.parse(side4)).calculatePerimetr()} \n Area : ${TrapezoidClass(double.parse(side1),double.parse(side2),double.parse(side3),double.parse(side4)).calculateArea()}"),
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
