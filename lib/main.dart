import 'package:crazy_routes/screens/home_screen.dart';
import 'package:crazy_routes/screens/route_one_screen.dart';
import 'package:crazy_routes/screens/route_three_screen.dart';
import 'package:crazy_routes/screens/route_two_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/one': (context) => RouteOneScreen(),
        '/two': (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
    ),
  );
}
