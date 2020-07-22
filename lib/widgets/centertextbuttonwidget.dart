import 'package:flutter/material.dart';
import 'package:test_app/widgets/textwidget.dart';

class CenterTextButtonWidget extends StatelessWidget {

  final String centerText;
  final VoidCallback action;

  const CenterTextButtonWidget({
    Key key,
    @required this.centerText,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: RaisedButton(
          onPressed: this.action,
          child: TextWidget(text: this.centerText),
        ),
      ),
    );
  }
}
