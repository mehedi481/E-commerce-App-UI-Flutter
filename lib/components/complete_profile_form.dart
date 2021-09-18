import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/pages/otp_page/otp.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: inputDecoration(
            text: "First Name",
            hintText: "Enter your first name",
            icon: Icon(Icons.person),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(22),
        ),
        TextFormField(
          decoration: inputDecoration(
            text: "Last Name",
            hintText: "Enter your last name",
            icon: Icon(Icons.person),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(22),
        ),
        TextFormField(
          decoration: inputDecoration(
            text: "Phone Number",
            hintText: "Enter your Phone Number",
            icon: Icon(Icons.phone_android),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(22),
        ),
        TextFormField(
          decoration: inputDecoration(
            text: "Address",
            hintText: "Enter your address",
            icon: Icon(Icons.location_on),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(35),
        ),
        defaultButton(
          onPress: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OTP()));
          },
          text: "Continue",
        ),
      ],
    );
  }
}
