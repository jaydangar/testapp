import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/bottomnavigation_bloc.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/bottom_navigation.dart';
import 'package:test_app/widgets/raisedbuttonwidget.dart';
import 'package:test_app/widgets/textwidget.dart';

class SecondScreen extends StatelessWidget {
  final int selectedIndex;

  SecondScreen({@required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<BottomNavigationBloc>(context),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: RaisedButtonWidget(
                  action: () => Navigator.pushNamed(
                      context, Routing.ScreenDFromB,
                      arguments: SlideAnimationType.LEFT),
                  icon: Icons.star,
                  buttonColor: Theme.of(context).buttonColor,
                  label: 'Screen D'),
            ),
          ),
          Expanded(
              child: Center(
            child: TextWidget(text: 'Screen B'),
          )),
          BottomNavigationWidget(selectedIndex: selectedIndex)
        ],
      ),
    );
  }
}
