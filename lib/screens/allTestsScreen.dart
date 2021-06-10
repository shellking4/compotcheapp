import 'package:compotcheapp/utilities/appBar.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class AllTestScreen extends StatefulWidget {
  static const String id = 'all_tests_screen';
  AllTestScreen({Key key}) : super(key: key);

  @override
  _AllTestScreenState createState() => _AllTestScreenState();
}

class _AllTestScreenState extends State<AllTestScreen> {
  String setAppBarTitle() {
    return "COMPOS EN VUE";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white, primaryColor: themeColor3),
        home: Scaffold(
            appBar: MyAppBar.getAppBar(context, setAppBarTitle(),
                AllTestScreen.id, 43.9, 11.1, 184.3, 162.1),
            body: Center(child: Text("ECRAN DES COMPOS EN VUE"))));
  }
}
