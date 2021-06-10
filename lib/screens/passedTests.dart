import 'package:compotcheapp/utilities/appBar.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class PassedTestsScreen extends StatefulWidget {
  static const String id = 'passed_tests_screen';
  PassedTestsScreen({Key key}) : super(key: key);

  @override
  _PassedTestsScreenState createState() => _PassedTestsScreenState();
}

class _PassedTestsScreenState extends State<PassedTestsScreen> {
  String setAppBarTitle() {
    return "COMPOSITIONS PASSÉES";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white, primaryColor: themeColor3),
        home: Scaffold(
            appBar: MyAppBar.getAppBar(context, setAppBarTitle(),
                PassedTestsScreen.id, 23.9, 11.1, 184.3, 162.1),
            body: Center(child: Text("ECRAN DES COMPOS EN VUE"))));
  }
}
