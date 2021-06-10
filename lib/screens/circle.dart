import 'package:figures/models/figures.dart';
import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Circle"),
        ),
        body: OfCircle(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Hello)'),
              ),
              ListTile(
                title: Text('circle'),
                onTap: () {
                  Navigator.pushNamed(context, '/circle');
                },
              ),
              ListTile(
                title: Text('rectangle'),
                onTap: () {
                  Navigator.pushNamed(context, '/rectangle');
                },
              ),
              ListTile(
                title: Text('triangle'),
                onTap: () {
                  Navigator.pushNamed(context, '/triangle');
                },
              ),
              ListTile(
                title: Text('trapezoid'),
                onTap: () {
                  Navigator.pushNamed(context, '/trapezoid');
                },
              ),
            ],
          ),
        ));
  }
}

class OfCircle extends StatefulWidget {
  OfCircle({Key? key}) : super(key: key);

  @override
  _OfCircleState createState() => _OfCircleState();
}

class _OfCircleState extends State<OfCircle> {
  late var side1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Radius:"),
        TextField(
            decoration: InputDecoration(hintText: 'Radius'),
            onChanged: (String value) {
              side1 = value;
              print(side1);
            }),
        TextButton(
            child: Text("Button"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text("Circle"),
                        content: Text(
                            "Perimetr : ${CircleClass(double.parse(side1)).calculatePerimetr()} \n Area : ${CircleClass(double.parse(side1)).calculateArea()}"),
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
