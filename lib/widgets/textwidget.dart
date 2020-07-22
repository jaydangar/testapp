import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {

  final String text; 

  TextWidget({@required this.text});

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text
    );
  }
}