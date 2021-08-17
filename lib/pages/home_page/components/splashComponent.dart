import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:flutter/material.dart';
class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final text;
  final image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "SHOP APP",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text,textAlign: TextAlign.center,),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(250),
          width: getProportionateScreenWidth(300),
        ),
      ],
    );
  }
}
