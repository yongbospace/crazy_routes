import 'package:crazy_routes/screens/route_two_screen.dart';
import 'package:flutter/material.dart';
import '../layout/main_layout.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;
  const RouteOneScreen({
    this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Route One Screen', children: [
      Text(
        'arguments: ${number.toString()}',
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwoScreen(),
                settings: RouteSettings(arguments: 789),
              ),
            );
          },
          child: Text('Push : Two')),
      ElevatedButton(
        onPressed: () => {
          Navigator.of(context).pop(456),
        },
        child: Text('Pop'),
      )
    ]);
  }
}
