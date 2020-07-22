import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/drawer_bloc.dart';
import 'package:test_app/widgets/textwidget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget(
      {Key key,
      @required GlobalKey<ScaffoldState> scaffoldKey,
      @required this.imageSource,
      @required this.bottomNavigationIcon1,
      @required this.bottomNavigationIcon2,
      @required this.bottomNavigationIcon3,
      @required this.bottomNavigationtitle1,
      @required this.bottomNavigationtitle2,
      @required this.bottomNavigationtitle3,
      @required this.accentColor})
      : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final String imageSource;

  final Icon bottomNavigationIcon1;
  final Icon bottomNavigationIcon2;
  final Icon bottomNavigationIcon3;

  final String bottomNavigationtitle1;
  final String bottomNavigationtitle2;
  final String bottomNavigationtitle3;

  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox.fromSize(
                      size: Size.fromHeight(70),
                      child: Image.asset(
                        imageSource,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      child: IconButton(
                        alignment: Alignment.bottomLeft,
                        icon: Icon(Icons.dehaze),
                        color: Colors.white,
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      right: 4,
                      child: IconButton(
                          color: accentColor,
                          icon: Icon(Icons.location_on),
                          onPressed: () => print('Sample Print')),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                BottomNavigationBar(
                    backgroundColor: accentColor,
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: bottomNavigationIcon1,
                          title: TextWidget(text: bottomNavigationtitle1)),
                      BottomNavigationBarItem(
                          icon: bottomNavigationIcon2,
                          title: TextWidget(text: bottomNavigationtitle2)),
                      BottomNavigationBarItem(
                          icon: bottomNavigationIcon3,
                          title: TextWidget(text: bottomNavigationtitle3)),
                    ]),
              ],
            ),
            drawer: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Drawer(
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      child: Text(''),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage(imageSource),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                        leading: Icon(Icons.code),
                        title: TextWidget(text: 'Button 1'),
                        onTap: () {
                          BlocProvider.of<DrawerBloc>(context).add(
                            DrawerButtonSelectionEvent(buttonSelected: 1),
                          );
                          Navigator.pop(context);
                        }),
                    ListTile(
                        leading: Icon(Icons.color_lens),
                        title: TextWidget(text: 'Button 2'),
                        onTap: () {
                          BlocProvider.of<DrawerBloc>(context).add(
                            DrawerButtonSelectionEvent(buttonSelected: 2),
                          );
                          Navigator.pop(context);
                        }),
                    ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: TextWidget(text: 'Button 3'),
                        onTap: () {
                          BlocProvider.of<DrawerBloc>(context).add(
                            DrawerButtonSelectionEvent(buttonSelected: 3),
                          );
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
