import 'package:flutter/material.dart';
import 'package:test_app/widgets/textwidget.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  final String text;
  final VoidCallback action;
  final Color color;

  FloatingActionButtonWidget(
      {@required this.text, @required this.action, this.color});

  @override
  _FloatingActionButtonWidgetState createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.action,
      child: TextWidget(text: widget.text),
      backgroundColor: widget?.color ?? Theme.of(context).accentColor,
    );
  }
}
