import 'package:compotcheapp/pages/aboutPage.dart';
import 'package:compotcheapp/pages/allTestsPage.dart';
import 'package:compotcheapp/pages/passedTestsPage.dart';
import 'package:compotcheapp/pages/scoresAndGradesPage.dart';
import 'package:compotcheapp/screens/loginscreen.dart';
import 'package:compotcheapp/screens/welcome_screen.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:compotcheapp/utilities/customDrawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(CompoTcheApp());

class CompoTcheApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        AboutPage.id: (context) => AboutPage(),
        LoginScreen.id: (context) => LoginScreen(),
        AllTestsPage.id: (context) => AllTestsPage(),
        PassedTestsPage.id: (context) => PassedTestsPage(),
        ScoreAndGradesPage.id: (context) => ScoreAndGradesPage(),
        CustomDrawer.id: (context) => CustomDrawer()
      },
    );
  }
}
