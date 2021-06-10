import 'package:compotcheapp/utilities/customDrawer.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key key}) : super(key: key);

  static PreferredSizeWidget getAppBar(
      BuildContext context,
      String appBarTitle,
      String routeName,
      double portraitLeftValue,
      double portraitRightValue,
      double landscapeLeftvalue,
      double landscapeRightValue) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return AppBar(
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => CustomDrawer.of(context).open(),
          );
        },
      ),
      toolbarHeight: 70.0,
      title: Row(
        children: <Widget>[
          SizedBox(
              width: (isPortrait) ? portraitLeftValue : landscapeLeftvalue),
          Text(
            appBarTitle,
            style: TextStyle(
                fontSize: 15.2, letterSpacing: 0.3, fontFamily: "Kiwi"),
          ),
          SizedBox(
              width: (isPortrait) ? portraitRightValue : landscapeRightValue),
          SizedBox(width: 0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {}
}
