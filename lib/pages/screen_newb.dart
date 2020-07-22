import 'package:flutter/material.dart';
import 'package:test_app/widgets/appbarwidget.dart';

class ScreenNewB extends StatelessWidget {
  final String name = 'Screen B';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.pop(context),
        title: this.name,
      ),
      body: Container(),
    );
  }
}
