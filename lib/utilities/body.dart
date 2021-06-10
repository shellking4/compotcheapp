import 'package:compotcheapp/pages/allTestsPage.dart';
import 'package:compotcheapp/utilities/background.dart';
import 'package:compotcheapp/utilities/button.dart';
import 'package:compotcheapp/utilities/constants.dart';
import 'package:compotcheapp/utilities/InputField.dart';
import 'package:compotcheapp/utilities/PasswordField.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailFieldController;
  TextEditingController passFieldController;
  String email;
  String password;
  @override
  initState() {
    super.initState();
    emailFieldController = TextEditingController();
    passFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.07,
              ),
              Text(
                "CONNEXION",
                style: TextStyle(
                  fontSize: 16.0,
                  color: themeColor3,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Kiwi",
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              AltRoundedInputField(
                controller: emailFieldController,
                validator: validateEmail,
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.person,
                prefixIconColor: themeColor3,
                hintText: "Votre email",
                onChanged: (value) {},
                onSaved: (value) {
                  email = value;
                },
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              AltRoundedPasswordField(
                controller: passFieldController,
                validator: validatePassword,
                onChanged: (value) {},
                obscureText: true,
                hintText: "Votre mot de passe",
                prefixIcon: Icons.lock,
                prefixIconColor: themeColor3,
                suffixIcon: Icons.visibility,
                suffixIconColor: themeColor3,
                onSaved: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                width: size.width * 1,
                text: "SE CONNECTER",
                color: themeColor3,
                fontColor: Colors.white,
                fontFamily: "Kiwi",
                onPressed: () {
                  submit(_formKey, context);
                },
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Image.asset("images/online_test.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  String validateEmail(String value) {
    if (value.length == 0) {
      return "Veuillez entrer votre email";
    }
    if (emailValidator(value) == false) {
      return "Votre email n'est pas valide";
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return "Veuillez entrer un mot de passe";
    }
    if (value.length < 8) {
      return "Le mot de passe doit faire 8 caractères au moins";
    }
    return null;
  }

  bool emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  submit(GlobalKey<FormState> key, BuildContext context) async {
    if (key.currentState.validate() == true) {
      key.currentState.save();
      Navigator.pushNamed(context, AllTestsPage.id);
      print(email);
      print(password);
    }
  }

  void clearFields() {
    emailFieldController.text = '';
    passFieldController.text = '';
  }
}
