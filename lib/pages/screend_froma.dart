import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/bottomnavigation_bloc.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/floating_button_widget.dart';
import 'package:test_app/widgets/textwidget.dart';

class ScreenDFromSectionA extends StatefulWidget {
  @override
  _ScreenDFromSectionAState createState() => _ScreenDFromSectionAState();
}

class _ScreenDFromSectionAState extends State<ScreenDFromSectionA> {
  final String title = 'Screen D';
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<BottomNavigationBloc>(context),
      child: Scaffold(
        appBar: AppBarWidget(
          title: title,
          backButtonPressedAction: () => Navigator.pop(context),
          backButtonVisible: true,
        ),
        body: Center(
          child: TextWidget(text: title),
        ),
        floatingActionButton: FloatingActionButtonWidget(
            text: 'B',
            action: () {
              Navigator.of(context).popAndPushNamed(Routing.UseCase2Route,
                  arguments: SlideAnimationType.RIGHT);
              BlocProvider.of<BottomNavigationBloc>(context)
                  .add(OnSelectionChanged(index: 1));
            }),
      ),
    );
  }
}
