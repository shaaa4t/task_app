import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';

class RaisedButtonWidget extends StatelessWidget {
  final String textBtn;
  final Function onPressed;

  const RaisedButtonWidget({@required this.textBtn, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        elevation: 1,
        onPressed: onPressed,
        child: Text(
          textBtn,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        color: ThemeColors.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}