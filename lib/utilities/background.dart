import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset("images/ic_top_vector.png"),
            top: 0,
            left: 0,
            width: size.width * 0.35,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("images/ic_bottom_vector.png"),
            width: size.width * 0.4,
          ),
          child,
        ],
      ),
    );
  }
}
