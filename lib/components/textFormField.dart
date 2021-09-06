import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailTextField(
          text: "Email",
          icon: Icon(Icons.email),
        ),
        SizedBox(
          height: 25,
        ),
        PasswordTextField(
          text: "Password",
          icon: Icon(Icons.password),
        ),
      ],
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
