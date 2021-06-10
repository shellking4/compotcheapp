import 'package:compotcheapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 1),
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: themeColor5, borderRadius: BorderRadius.circular(29)),
        child: child);
  }
}
