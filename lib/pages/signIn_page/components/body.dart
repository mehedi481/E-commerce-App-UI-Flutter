import 'package:e_commerce_app_ui/components/socialCard.dart';
import 'package:e_commerce_app_ui/components/textFormField.dart';
import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:e_commerce_app_ui/pages/reg_account.dart/registration.dart';
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
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Sign in with your email and password or Continue with your social network",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 25,
                ),
                child: CustomTextFormField(),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: Icons.email,
                    press: () {
                      print("social card play");
                    },
                  ),
                  SocialCard(
                    icon: Icons.facebook,
                    press: () {
                      print("social card play");
                    },
                  ),
                  SocialCard(
                    icon: Icons.email,
                    press: () {
                      print("social card play");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
