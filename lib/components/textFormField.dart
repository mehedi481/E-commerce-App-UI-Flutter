import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final _formKey = GlobalKey<FormState>();
  final List<String> error = ["Demo error"];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailTextField(
            text: "Email",
            icon: Icon(Icons.email),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          PasswordTextField(
            text: "Password",
            icon: Icon(Icons.password),
          ),
          Row(
            children: [
              Icon(
                Icons.warning,
                color: Colors.red,
              ),
              SizedBox(width: 10),
              Text(error[0])
            ],
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
              onPressed: () {},
              child: Text("Sign in"),
            ),
          )
        ],
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);
  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: text,
        hintText: text,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          gapPadding: 10,
        ),
        suffixIcon: icon,
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        hintText: text,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          gapPadding: 10,
        ),
        suffixIcon: icon,
      ),
    );
  }
}
