import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
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
          CustomTextFormField()
        ],
      ),
    ));
  }
}

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 320,
      color: Colors.black,
    );
  }
}
