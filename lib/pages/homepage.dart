import 'package:flutter/material.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/centertextbuttonwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: false,
        backButtonPressedAction: null,
        title: 'Home Page',
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          CenterTextButtonWidget(
            centerText: 'Use Case 1',
            action: () => Navigator.pushNamed(context, Routing.ScreenARoute,
                arguments: SlideAnimationType.LEFT),
          ),
          CenterTextButtonWidget(
            centerText: 'Use Case 2',
            action: () => Navigator.pushNamed(context, Routing.UseCase2Route,
                arguments: SlideAnimationType.LEFT),
          ),
          CenterTextButtonWidget(
            centerText: 'Use Case 3',
            action: () => Navigator.pushNamed(context, Routing.UseCase3Route,
                arguments: SlideAnimationType.LEFT),
          ),
          CenterTextButtonWidget(
            centerText: 'Use Case 4',
            action: () => Navigator.pushNamed(context, Routing.UseCase4Route,
                arguments: SlideAnimationType.LEFT),
          ),
          CenterTextButtonWidget(
              centerText: 'Use Case 5',
              action: () {
                Navigator.pushNamed(context, Routing.UseCase5Route,
                    arguments: SlideAnimationType.LEFT);
              }),
          CenterTextButtonWidget(
            centerText: 'Use Case 6',
            action: () => Navigator.pushNamed(context, Routing.UseCase6Route,
                arguments: SlideAnimationType.LEFT),
          ),
        ],
      ),
    );
  }
}
