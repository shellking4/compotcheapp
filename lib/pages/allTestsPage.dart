import 'package:compotcheapp/screens/allTestsScreen.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:compotcheapp/utilities/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';

class AllTestsPage extends StatefulWidget {
  static final String id = 'french_hymns_page';
  @override
  AllTestsPageState createState() => AllTestsPageState();
}

class AllTestsPageState extends ResumableState<AllTestsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = AllTestScreen();
    var child = CustomDrawer(child: child_widget);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: themeColor3),
      home: child,
    );
  }

  void onResume() {
    build(context);
  }
}
