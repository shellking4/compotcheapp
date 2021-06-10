import 'package:compotcheapp/screens/aboutScreen.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:compotcheapp/utilities/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';

class AboutPage extends StatefulWidget {
  static final String id = 'goun_hymns_page';
  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends ResumableState<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = AboutScreen();
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
