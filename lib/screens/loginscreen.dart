import 'package:compotcheapp/utilities/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final String id = 'login_screen';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
