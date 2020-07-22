import 'package:flutter/material.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/floating_button_widget.dart';
import 'package:test_app/widgets/textwidget.dart';

class ScreenA extends StatelessWidget {
  final String name = 'Screen A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.popAndPushNamed(context,Routing.HomePageRoute,arguments: SlideAnimationType.RIGHT),
        title: this.name,
      ),
      body: Center(
        child: TextWidget(text: this.name),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        text: 'B',
        action: () => Navigator.pushNamed(context,Routing.ScreenBRoute,arguments: SlideAnimationType.LEFT),
      ),
    );
  }
}
