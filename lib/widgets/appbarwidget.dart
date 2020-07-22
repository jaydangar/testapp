import 'package:flutter/material.dart';
import 'package:test_app/widgets/textwidget.dart';

class AppBarWidget extends StatefulWidget with PreferredSizeWidget {
  final String title;
  final Color color;
  final IconData icon;
  final VoidCallback action;
  final bool centerTitle;
  final bool backButtonVisible;
  final IconData backButtonIcon;
  final VoidCallback backButtonPressedAction;

  AppBarWidget(
      {@required this.title,
      this.centerTitle,
      this.color,
      this.icon,
      this.action,
      this.backButtonIcon,
      @required this.backButtonVisible,
      @required this.backButtonPressedAction});

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(50);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    IconData defaultIcon;
    if (widget.backButtonVisible) {
      defaultIcon = Icons.arrow_back_ios;
    }
    return AppBar(
      leading: IconButton(
          icon: Icon(widget?.backButtonIcon ?? defaultIcon),
          onPressed: widget.backButtonPressedAction),
      centerTitle: widget?.centerTitle ?? true,
      title: TextWidget(text: widget.title),
      backgroundColor: widget?.color ?? Theme.of(context).accentColor,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              widget?.icon ?? null,
              color: Colors.white,
            ),
            onPressed: widget?.action ?? null)
      ],
    );
  }
}
