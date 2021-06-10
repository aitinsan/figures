import 'package:figures/screens/circle.dart';
import 'package:figures/screens/rectangle.dart';
import 'package:figures/screens/trapeziod.dart';
import 'package:figures/screens/triangle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/circle': (context) => CircleWidget(),
          '/rectangle': (context) => RectangleWidget(),
          '/triangle': (context) => TriangleWidget(),
          '/trapezoid': (context) => TrapezoidWidget(),
        },
        home:
            CircleWidget() //TrapezoidWidget()//TriangleWidget()//RectangleWidget()

        );
  }
}
