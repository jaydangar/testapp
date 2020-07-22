import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/bloc/loading_bloc.dart';
import 'package:test_app/utils/routing.dart';
import 'package:test_app/utils/slide_type.dart';
import 'package:test_app/widgets/appbarwidget.dart';
import 'package:test_app/widgets/textwidget.dart';

class UseCase5 extends StatefulWidget {
  const UseCase5({Key key}) : super(key: key);

  @override
  _UseCase5State createState() => _UseCase5State();
}

class _UseCase5State extends State<UseCase5> {
  @override
  void initState() {
    BlocProvider.of<LoadingBloc>(context).add(LoadingStartEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Use Case 5',
        backButtonVisible: true,
        backButtonPressedAction: () => Navigator.pop(context),
      ),
      body: BlocListener<LoadingBloc, LoadingState>(
        listener: (context, state) {
          if (state is Loaded) {
            Navigator.pushNamed(context, Routing.ScreenBFrom5,
                arguments: SlideAnimationType.LEFT);
          }
        },
        child: BlocBuilder<LoadingBloc, LoadingState>(
          buildWhen: (previous, current) => current != previous,
          builder: (context, state) {
            if (state is Loaded) {
              return Center(
                child: TextWidget(text: 'Loading Done.'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
