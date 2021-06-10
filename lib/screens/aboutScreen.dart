import 'package:compotcheapp/utilities/appBar.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  static const String id = 'scores_and_notes_screen';
  AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String setAppBarTitle() {
    return "À PROPOS";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white, primaryColor: themeColor3),
        home: Scaffold(
            appBar: MyAppBar.getAppBar(context, setAppBarTitle(),
                AboutScreen.id, 66.9, 11.1, 184.3, 162.1),
            body: Center(child: Text("ECRAN D'À PROPOS"))));
  }
}
