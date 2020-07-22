import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/bottomnavigation_bloc.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/bottom_navigation.dart';
import 'package:test_app/widgets/raisedbuttonwidget.dart';
import 'package:test_app/widgets/textwidget.dart';

class FirstScreen extends StatelessWidget {
  final int selectedIndex;

  FirstScreen({@required this.selectedIndex});

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
                      context, Routing.ScreenDFromA,
                      arguments: SlideAnimationType.LEFT),
                  icon: Icons.home,
                  buttonColor: Theme.of(context).buttonColor,
                  label: 'Screen D'),
            ),
          ),
          Expanded(
              child: Center(
            child: TextWidget(text: 'Screen A'),
          )),
          BottomNavigationWidget(selectedIndex: selectedIndex)
        ],
      ),
    );
  }
}
