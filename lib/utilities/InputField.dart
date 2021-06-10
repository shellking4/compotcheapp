import 'package:compotcheapp/utilities/textFieldContainer.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextInputType textInputType;
  final TextEditingController controller;
  final Function validator;
  final Function onSaved;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.textInputType,
    this.validator,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: textInputType,
        onChanged: onChanged,
        onSaved: onSaved,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}

class AltRoundedInputField extends StatelessWidget {
  final TextEditingController controller;
  final Function onSaved;
  final Function validator;
  final String hintText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final ValueChanged<String> onChanged;
  final TextInputType textInputType;
  const AltRoundedInputField(
      {Key key,
      this.controller,
      this.onSaved,
      this.validator,
      this.hintText,
      this.prefixIcon,
      this.onChanged,
      this.textInputType, this.prefixIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconWidget = Icon(
      prefixIcon,
      color: prefixIconColor,
    );
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textAlign: TextAlign.start,
        onSaved: onSaved,
        onChanged: onChanged,
        decoration: kTextFieldDecoration.copyWith(
            hintText: hintText, prefixIcon: iconWidget),
        validator: validator);
  }
}
