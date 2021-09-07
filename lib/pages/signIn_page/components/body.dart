import 'package:e_commerce_app_ui/components/textFormField.dart';
import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
            ),
          ),
          Text(
            "Sign in with your email and password or Continue with your social network",
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 25,
            ),
            child: CustomTextFormField(),
          ),
        ],
      ),
    ));
  }
}
