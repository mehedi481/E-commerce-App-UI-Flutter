import 'package:e_commerce_app_ui/components/socialCard.dart';
import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/main.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Registrer Account",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Complete your details or continue \n with social media",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
            ),
            textAlign: TextAlign.center,
          ),
          RegisterForm(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialCard(icon: Icons.email, press: () {}),
              SocialCard(icon: Icons.facebook, press: () {}),
              SocialCard(icon: Icons.email, press: () {}),
            ],
          ),
          Text(
            "By continuing your confirm that you agree\n with our Term and Condition",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

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
        defaultButton(text: "Continue", onPress: () {}),
      ],
    );
  }
}
