import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';

class FlatButtonWidget extends StatelessWidget {
  final String textBtn;
  final Function onPressed;
  final Color color;

  const FlatButtonWidget({@required this.textBtn, @required this.onPressed, this.color =ThemeColors.textColor});
  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: onPressed, child: Text(textBtn,style: TextStyle(
      color: color
    ),));
  }
}
