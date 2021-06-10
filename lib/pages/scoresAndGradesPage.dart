import 'package:compotcheapp/screens/scores&notes.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:compotcheapp/utilities/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';

class ScoreAndGradesPage extends StatefulWidget {
  static final String id = 'goun_hymns_page';
  @override
  ScoreAndGradesPageState createState() => ScoreAndGradesPageState();
}

class ScoreAndGradesPageState extends ResumableState<ScoreAndGradesPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = ScoreAndGradesScreen();
    var child = CustomDrawer(child: child_widget);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: themeColor3),
      home: child,
    );
  }

  void onResume() {
    build(context);
  }
}
