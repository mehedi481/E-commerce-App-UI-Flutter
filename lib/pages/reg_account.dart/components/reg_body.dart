import 'package:e_commerce_app_ui/components/registrationForm.dart';
import 'package:e_commerce_app_ui/components/socialCard.dart';
import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Text(
              "Registrer Account",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(25),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Text(
              "Complete your details or continue \n with social media",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: ScreenSize.height! * 0.09,
            ),
            RegisterForm(),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(icon: Icons.email, press: () {}),
                SocialCard(icon: Icons.facebook, press: () {}),
                SocialCard(icon: Icons.email, press: () {}),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Text(
              "By continuing your confirm that you agree\n with our Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
