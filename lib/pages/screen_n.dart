import 'package:flutter/material.dart';
import 'package:test_app/pages/screen_d.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/floating_button_widget.dart';
import 'package:test_app/widgets/slide_animation_route.dart';
import 'package:test_app/widgets/textwidget.dart';

class ScreenN extends StatelessWidget {
  final String name = 'Screen N';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.pop(context),
        title: this.name,
      ),
      body: Center(
        child: TextWidget(text: this.name),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        text: 'D',
        action: () => Navigator.push(
            context,
            SlideAnimationRoute(
                page: ScreenD(), slideAnimationType: SlideAnimationType.LEFT)),
      ),
    );
  }
}
