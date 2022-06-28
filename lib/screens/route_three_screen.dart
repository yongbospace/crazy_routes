import 'package:crazy_routes/layout/main_layout.dart';
import 'package:flutter/material.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(
      title: 'RouteThreeScreen',
      children: [
        Text(
          'argument : $argument',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            return Navigator.of(context).pop();
          },
          child: Text(
            'Pop',
          ),
        )
      ],
    );
  }
}
