import 'package:compotcheapp/screens/passedTests.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:compotcheapp/utilities/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';

class PassedTestsPage extends StatefulWidget {
  static final String id = 'passed_tests_page';
  @override
  PassedTestsPageState createState() => PassedTestsPageState();
}

class PassedTestsPageState extends ResumableState<PassedTestsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = PassedTestsScreen();
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
