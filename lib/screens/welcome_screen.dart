import 'dart:async';
import 'dart:ui';
import 'package:compotcheapp/screens/loginscreen.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return Scaffold(
        backgroundColor: themeColor3,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: (isPortrait) ? 25.0 : 45.0,
                    width: (isPortrait) ? 30 : 176,
                  ),
                  Container(
                      child: CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('images/student.jpeg'),
                    radius: 20.0,
                  )),
                  SizedBox(
                    width: 16.0,
                  ),
                  Center(
                    child: TypewriterAnimatedTextKit(
                      text: ['C O M P O T C H E . I O'],
                      speed: Duration(milliseconds: 85),
                      repeatForever: false,
                      totalRepeatCount: 1,
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          fontFamily: "Kiwi",
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200.0,
              ),
              Center(
                child: TypewriterAnimatedTextKit(
                  text: ['B Y  S Y S L A B S , L L C'],
                  speed: Duration(milliseconds: 85),
                  repeatForever: false,
                  totalRepeatCount: 1,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      fontFamily: "Kiwi",
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ));
  }
}
