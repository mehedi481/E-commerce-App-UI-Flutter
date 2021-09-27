import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:e_commerce_app_ui/main.dart';
import 'package:flutter/material.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.height! * .05,
              ),
              Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(25),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: ScreenSize.height! * .05),
              Text(
                "We sent you code to +880170000.",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height: ScreenSize.height! * .15),
              OtpForm(),
              SizedBox(height: ScreenSize.height! * .05),
              InkWell(
                onTap: (){
                  print("Resend otp");
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This code will expired in ",
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()} sec",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {
            print("Time end");
          },
        ),
      ],
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                decoration: otpInputDecoration(),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin2FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                decoration: otpInputDecoration(),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin3FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                decoration: otpInputDecoration(),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: pin4FocusNode,
                keyboardType: TextInputType.number,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                decoration: otpInputDecoration(),
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScreenSize.height! * 0.15,
        ),
        defaultButton(onPress: () {}, text: "Continue ")
      ],
    );
  }

  InputDecoration otpInputDecoration() {
    return InputDecoration(
      contentPadding:
          EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: kPrimaryColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: kPrimaryColor),
      ),
    );
  }
}
