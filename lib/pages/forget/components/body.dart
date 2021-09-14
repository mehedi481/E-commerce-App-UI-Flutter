import 'package:e_commerce_app_ui/components/formError.dart';
import 'package:e_commerce_app_ui/helpers/constants/constants.dart';
import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:flutter/material.dart';

class ForgetPageBody extends StatelessWidget {
  const ForgetPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(25),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: ScreenSize.height! * 0.05,
              ),
              Text(
                "Please enter your email and we will send you a link to return to your account",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: ScreenSize.height! * 0.15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: ForgetPassForm(),
              ),
              SizedBox(
                height: ScreenSize.height! * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  _ForgetPassFormState createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Email",
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                gapPadding: 10,
              ),
              suffixIcon: Icon(Icons.email),
            ),
          ),
          FormError(error: errors),
          SizedBox(
            height: ScreenSize.height! * 0.15,
          ),
          SizedBox(
            width: ScreenSize.width * 0.9,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  kPrimaryColor,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              child: Text("Continue"),
            ),
          )
        ],
      ),
    );
  }
}
