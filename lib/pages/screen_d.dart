import 'package:flutter/material.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/textwidget.dart';

class ScreenD extends StatelessWidget {
  final String name = 'Screen D';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: true,
          title: this.name,
          backButtonPressedAction: () => Navigator.pushNamedAndRemoveUntil(
              context,
              Routing.ScreenARoute,
              ModalRoute.withName(Routing.ScreenARoute),
              arguments: SlideAnimationType.RIGHT)),
      body: Center(
        child: TextWidget(text: this.name),
      ),
    );
  }
}
