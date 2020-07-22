import 'package:flutter/material.dart';
import 'package:test_app/utils/routing.dart';

class Locked extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: IconButton(
            color: Colors.white,
            icon: Icon(Icons.lock),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, Routing.UseCase3Route),
          ),
        ),
      ),
    );
  }
}
