import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/pages/complete_profile/complete_profile_form.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: inputDecoration(
            text: "Email",
            hintText: "Enter your email",
            icon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(25)),
        TextFormField(
          decoration: inputDecoration(
            text: "Password",
            hintText: "Enter your password",
            icon: Icon(Icons.lock),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(25)),
        TextFormField(
          decoration: inputDecoration(
            text: "Confirm Password",
            hintText: "Re-enter your password",
            icon: Icon(Icons.lock),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(25)),
        defaultButton(
            text: "Continue",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompleteProfilePage(),
                ),
              );
            }),
      ],
    );
  }
}
