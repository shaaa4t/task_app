import 'package:flutter/material.dart';
import 'package:task_app/commons/commons.dart';
import 'package:task_app/screens/screens.dart';
import 'package:task_app/widgets/widgets.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      appBar: AppBar(

        backgroundColor: ThemeColors.background,
        iconTheme: IconThemeData(color: ThemeColors.textColor),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/login.png'),
                const SizedBox(
                  height: 40,
                ),
                TextFieldWidget(
                    label: 'Email', hint: 'Email', icon: Icons.email),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  label: 'Password',
                  hint: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  label: 'Confirm Password',
                  hint: 'Confirm Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Do you agree to the terms?'),
                      Checkbox(
                        activeColor: ThemeColors.primary,
                        value: checkedValue,
                        onChanged: (bool value) {
                          setState(() {
                            checkedValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RaisedButtonWidget(textBtn: 'Sign up', onPressed: () {}),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I have an account?',
                    style: TextStyle(
                        color: ThemeColors.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  FlatButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    textBtn: 'Sign in',
                    color: ThemeColors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
