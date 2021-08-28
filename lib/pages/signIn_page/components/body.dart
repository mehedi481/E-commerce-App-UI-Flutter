import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: getProportionateScreenWidth(28)),
        )
      ],
    ));
  }
}
