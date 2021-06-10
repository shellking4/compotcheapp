import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final fontColor;
  final String fontFamily;
  final Function onPressed;

  const RoundedButton(
      {Key key,
      this.color,
      this.text,
      @required this.width,
      @required this.onPressed,
      this.fontFamily, this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(32.0),
        child: MaterialButton(
            onPressed: onPressed,
            minWidth: width,
            height: 35.0,
            child: Text(
              text,
              style: TextStyle(
                  color: fontColor, fontSize: 15.0, fontFamily: fontFamily),
            )),
      ),
    );
  }
}

class AltRoundedButton extends StatelessWidget {
  final Function press;
  final String text;
  final String ftfamily;
  final Color color, textColor;
  const AltRoundedButton(
      {Key key,
      this.press,
      this.color,
      this.textColor,
      this.text,
      this.ftfamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            color: color,
            onPressed: press,
            child: Text(text,
                style: TextStyle(color: textColor, fontFamily: ftfamily)),
          )),
    );
  }
}
