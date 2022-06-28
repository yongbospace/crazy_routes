import 'package:crazy_routes/screens/route_three_screen.dart';
import 'package:flutter/material.dart';

import '../layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'RoutTwoScreen',
      children: [
        Text(
          'arguments: $arguments',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/three', arguments: 123);
            },
            child: Text('Push Named : Three')),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
              '/three',
            );
          },
          child: Text('Push Replace : Three'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (_) => RouteThreeScreen(),
                ),
                (route) => route.settings.name == '/');
          },
          child: Text(
            'Push And Remove Until : Three',
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(789);
          },
          child: Text('Pop'),
        ),
      ],
    );
  }
}
