import 'package:compotcheapp/utilities/appBar.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class ScoreAndGradesScreen extends StatefulWidget {
  static const String id = 'scores_and_notes_screen';
  ScoreAndGradesScreen({Key key}) : super(key: key);

  @override
  _ScoreAndGradesScreenState createState() => _ScoreAndGradesScreenState();
}

class _ScoreAndGradesScreenState extends State<ScoreAndGradesScreen> {
  String setAppBarTitle() {
    return "SCORES ET NOTES";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white, primaryColor: themeColor3),
        home: Scaffold(
            appBar: MyAppBar.getAppBar(context, setAppBarTitle(),
                ScoreAndGradesScreen.id, 45.9, 11.1, 184.3, 162.1),
            body: Center(child: Text("ECRAN DES SCORES ET NOTES"))));
  }
}
