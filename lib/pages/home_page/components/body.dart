import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    "TOKOTO",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Welcome to Tokoto, Let's shop"),
                  Spacer(flex: 2,),
                  Image.asset(
                    "assets/images/onBoard1.png",
                    height: getProportionateScreenHeight(250),
                    width: getProportionateScreenWidth(300),
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
