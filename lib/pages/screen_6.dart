import 'package:flutter/material.dart';
import 'package:test_app/widgets/appbarwidget.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'Screen 6',
          backButtonVisible: true,
          backButtonPressedAction: () => Navigator.pop(context)),
      body: Center(
        child: TextField(),
      ),
    );
  }
}
