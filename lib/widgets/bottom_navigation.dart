import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/bottomnavigation_bloc.dart';
import 'package:test_app/widgets/textwidget.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key key,
    @required int selectedIndex,
  }) : _selectedIndex = selectedIndex, super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) =>
          BlocProvider.of<BottomNavigationBloc>(context)
              .add(OnSelectionChanged(index: value)),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: TextWidget(text: 'Screen A')),
        BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: TextWidget(text: 'Screen B')),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            title: TextWidget(text: 'Screen C')),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
