import 'package:flutter/material.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/floating_button_widget.dart';

class UseCase6 extends StatefulWidget {
  @override
  _UseCase6State createState() => _UseCase6State();
}

class _UseCase6State extends State<UseCase6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'Use Case 6',
          backButtonVisible: true,
          backButtonPressedAction: () => Navigator.pop(context)),
      body: Container(),
      floatingActionButton: FloatingActionButtonWidget(
        text: 'B',
        action: () => Navigator.pushNamed(context, Routing.Screen6Route,arguments: SlideAnimationType.LEFT),
      ),
    );
  }
}
