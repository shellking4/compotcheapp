import 'package:flutter/material.dart';

const themeColor1 = Color(0xFF318CE7);
const themeColor2 = Color(0xFF1C108A);
const themeColor3 = Color(0xFF15097B);
const themeColor4 = Color(0xFF6F35A5);
const themeColor5 = Color(0xFFF1E6FF);

const kTextFieldDecoration = InputDecoration(
    hintText: 'Enter a value',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0))),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themeColor3, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themeColor3, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ));
