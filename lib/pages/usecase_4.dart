import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/drawer_bloc.dart';
import 'package:test_app/widgets/drawer_widget.dart';

class UseCase4 extends StatelessWidget {
  const UseCase4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return BlocProvider(
      create: (context) => DrawerBloc(),
      child: BlocBuilder<DrawerBloc, DrawerState>(
        builder: (context, state) {
          if (state is DrawerButtonSelected) {
            switch (state.selectedButton) {
              case 1:
                return DrawerWidget(
                  scaffoldKey: _scaffoldKey,
                  imageSource: 'lib/assets/coffee1.jpg',
                  accentColor: Colors.red[200],
                  bottomNavigationIcon1: Icon(Icons.settings),
                  bottomNavigationIcon2: Icon(Icons.computer),
                  bottomNavigationIcon3: Icon(Icons.warning),
                  bottomNavigationtitle1: 'b1/t1',
                  bottomNavigationtitle2: 'b1/t2',
                  bottomNavigationtitle3: 'b1/t3',
                );
              case 2:
                return DrawerWidget(
                  scaffoldKey: _scaffoldKey,
                  imageSource: 'lib/assets/coffee2.jpg',
                  accentColor: Colors.amber[100],
                  bottomNavigationIcon1: Icon(Icons.contact_mail),
                  bottomNavigationIcon2: Icon(Icons.folder),
                  bottomNavigationIcon3: Icon(Icons.clear_all),
                  bottomNavigationtitle1: 'b2/t1',
                  bottomNavigationtitle2: 'b2/t2',
                  bottomNavigationtitle3: 'b2/t3',
                );

              case 3:
                return DrawerWidget(
                  scaffoldKey: _scaffoldKey,
                  imageSource: 'lib/assets/coffee3.jpg',
                  accentColor: Colors.orangeAccent[100],
                  bottomNavigationIcon1: Icon(Icons.home),
                  bottomNavigationIcon2: Icon(Icons.headset),
                  bottomNavigationIcon3: Icon(Icons.file_upload),
                  bottomNavigationtitle1: 'b3/t1',
                  bottomNavigationtitle2: 'b3/t2',
                  bottomNavigationtitle3: 'b3/t3',
                );

              default:
                return DrawerWidget(
                  scaffoldKey: _scaffoldKey,
                  imageSource: 'lib/assets/coffee1.jpg',
                  accentColor: Colors.amber[100],
                  bottomNavigationIcon1: Icon(Icons.home),
                  bottomNavigationIcon2: Icon(Icons.headset),
                  bottomNavigationIcon3: Icon(Icons.file_upload),
                  bottomNavigationtitle1: 'b3/t1',
                  bottomNavigationtitle2: 'b3/t2',
                  bottomNavigationtitle3: 'b3/t3',
                );
            }
          } else {
            return DrawerWidget(
              scaffoldKey: _scaffoldKey,
              imageSource: 'lib/assets/coffee1.jpg',
              accentColor: Colors.red[200],
              bottomNavigationIcon1: Icon(Icons.settings),
              bottomNavigationIcon2: Icon(Icons.computer),
              bottomNavigationIcon3: Icon(Icons.warning),
              bottomNavigationtitle1: 'b1/t1',
              bottomNavigationtitle2: 'b1/t2',
              bottomNavigationtitle3: 'b1/t3',
            );
          }
        },
      ),
    );
  }
}
