import 'package:flutter/material.dart';
import 'package:test_app/pages/screen_n.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/floating_button_widget.dart';
import 'package:test_app/widgets/slide_animation_route.dart';
import 'package:test_app/widgets/textwidget.dart';

class ScreenM extends StatelessWidget {
  final String name = 'Modal M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.pop(context),
        title: this.name,
        backButtonIcon: Icons.clear
      ),
      body: Center(
        child: TextWidget(text: this.name),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        text: 'N',
        action: () => Navigator.push(
            context,
            SlideAnimationRoute(
                page: ScreenN(), slideAnimationType: SlideAnimationType.LEFT)),
      ),
    );
  }
}
