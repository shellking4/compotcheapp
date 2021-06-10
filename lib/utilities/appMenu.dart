import 'package:compotcheapp/pages/aboutPage.dart';
import 'package:compotcheapp/pages/allTestsPage.dart';
import 'package:compotcheapp/pages/passedTestsPage.dart';
import 'package:compotcheapp/pages/scoresAndGradesPage.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'menu_item.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return SizedBox(
      width: 280,
      child: Material(
        color: themeColor3,
        child: SafeArea(
          child: Theme(
            data: ThemeData(brightness: Brightness.dark),
            child: isPortrait
                ? buildMenuItems()
                : SingleChildScrollView(
                    child: buildMenuItems(),
                  ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 7,
        ),
        ListTile(
            title: Text(
          "MENU COMPOTCHE",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Kiwi",
              fontWeight: FontWeight.w900,
              letterSpacing: 3.5),
        )),
        Menu_Item(
          color: themeColor3,
          title: "COMPOSITIONS EN VUE",
          screen: AllTestsPage(),
        ),
        SizedBox(
          height: 24,
        ),
        Menu_Item(
            color: themeColor3,
            title: "COMPOSITIONS PASSÉES",
            screen: PassedTestsPage()),
        SizedBox(
          height: 24,
        ),
        Menu_Item(
          color: themeColor3,
          title: "MES SCORES ET NOTES",
          screen: ScoreAndGradesPage(),
        ),
        SizedBox(
          height: 24,
        ),
        Menu_Item(
          color: themeColor3,
          title: "À PROPOS",
          screen: AboutPage(),
        )
      ],
    );
  }
}
