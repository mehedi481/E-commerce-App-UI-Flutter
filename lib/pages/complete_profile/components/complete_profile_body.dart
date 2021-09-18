import 'package:e_commerce_app_ui/components/complete_profile_form.dart';
import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

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
              "Complete Profile",
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
              height: getProportionateScreenHeight(35),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: CompleteProfileForm(),
            ),
            Text(
              "By Continuing confirm that you agree \n with our Term and Conditions",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
