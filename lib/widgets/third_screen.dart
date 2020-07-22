import 'package:flutter/material.dart';
import 'package:test_app/widgets/bottom_navigation.dart';
import 'package:test_app/widgets/textwidget.dart';

class ThirdScreen extends StatelessWidget {
  final int selectedIndex;

  ThirdScreen({@required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          child: Center(
            child: Icon(Icons.play_arrow),
          ),
        )),
        Expanded(
          child: Container(
            child: Center(child: TextWidget(text: 'Screen C')),
          ),
        ),
        BottomNavigationWidget(selectedIndex: selectedIndex)
      ],
    );
  }
}
