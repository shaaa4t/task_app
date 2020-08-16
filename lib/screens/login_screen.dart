import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_app/commons/commons.dart';
import 'package:task_app/screens/screens.dart';
import 'package:task_app/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
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
                FlatButtonWidget(
                  onPressed: () {},
                  textBtn: 'forget password?',
                ),
                RaisedButtonWidget(textBtn: 'Login', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        color: ThemeColors.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  FlatButtonWidget(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    textBtn: 'Create Account',
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
