import 'package:compotcheapp/utilities/textFieldContainer.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class RoundedPassworField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final Function validator;
  final Function onSaved;
  const RoundedPassworField(
      {Key key, this.onChanged, this.validator, this.controller, this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        controller: controller,
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Votre mot de passe",
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffixIcon: Icon(Icons.visibility, color: Colors.black),
            border: InputBorder.none),
      ),
    );
  }
}

class AltRoundedPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final Function onSaved;
  final Function validator;
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final Color prefixIconColor;
  final Color suffixIconColor;
  final ValueChanged<String> onChanged;
  final TextInputType textInputType;
  const AltRoundedPasswordField(
      {Key key,
      this.controller,
      this.onSaved,
      this.validator,
      this.hintText,
      this.obscureText,
      this.prefixIcon,
      this.onChanged,
      this.textInputType, this.suffixIcon, this.prefixIconColor, this.suffixIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prefixIconWidget = Icon(
      prefixIcon,
      color: prefixIconColor,
    );
    var suffixIconWidget = Icon(
      suffixIcon,
      color: suffixIconColor,
    );
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textAlign: TextAlign.start,
        onSaved: onSaved,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: kTextFieldDecoration.copyWith(
            hintText: hintText, prefixIcon: prefixIconWidget, suffixIcon: suffixIconWidget),
        validator: validator);
  }
}
