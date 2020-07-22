import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test_app/bloc/bloc/loading_bloc.dart';
import 'package:test_app/bloc/bottomnavigation_bloc.dart';
import 'package:test_app/pages/homepage.dart';
import 'package:test_app/utils/routing.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoadingBloc>(
          create: (context) => LoadingBloc(),
        ),
        BlocProvider<BottomNavigationBloc>(
          create: (context) => BottomNavigationBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routing.generateRoutes,
        home: HomePage(),
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }
}
