import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/bottomnavigation_bloc.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/first_screen.dart';
import 'package:test_app/widgets/second_screen.dart';
import 'package:test_app/widgets/third_screen.dart';

class UseCase2 extends StatelessWidget {
  final String name = 'Use Case 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.popAndPushNamed(
            context, Routing.HomePageRoute,
            arguments: SlideAnimationType.RIGHT),
        title: this.name,
      ),
      body: BlocProvider.value(
        value: BlocProvider.of<BottomNavigationBloc>(context),
        child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
          builder: (context, state) {
            if (state is BottomNavigationSelectionChangeState) {
              return returnScreenBasedOnIndex(state.index);
            } else if (state is BottomNavigationInitial) {
              return returnScreenBasedOnIndex(state.initialSelection);
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget returnScreenBasedOnIndex(int _selectedIndex) {
    switch (_selectedIndex) {
      case 0:
        return FirstScreen(
          selectedIndex: _selectedIndex,
        );
        break;
      case 1:
        return SecondScreen(
          selectedIndex: _selectedIndex,
        );
        break;
      case 2:
        return ThirdScreen(
          selectedIndex: _selectedIndex,
        );
        break;
      default:
        return FirstScreen(selectedIndex: _selectedIndex);
    }
  }
}
