import 'package:flutter/material.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';

class UseCase3 extends StatelessWidget {
  const UseCase3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Use Case 3',
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.pop(context),
        action: () => Navigator.pushReplacementNamed(
            context, Routing.LockedRoute,
            arguments: SlideAnimationType.LEFT),
        icon: Icons.lock_open,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        alignment: AlignmentDirectional.center,
        child: TextField(
          onChanged: (value) => print('value'),
        ),
      ),
    );
  }
}
