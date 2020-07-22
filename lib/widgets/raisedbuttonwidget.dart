import 'package:flutter/material.dart';
import 'package:test_app/widgets/textwidget.dart';

class RaisedButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback action;
  final Color buttonColor;
  final IconData icon;

  RaisedButtonWidget({@required this.icon,@required this.label, this.action,
      this.buttonColor});

  @override
  _RaisedButtonWidgetState createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      icon: Icon(widget?.icon),
        onPressed: widget.action,
        label: TextWidget(text: widget.label),      
        color: widget?.buttonColor ?? Theme.of(context).accentColor);
  }
}