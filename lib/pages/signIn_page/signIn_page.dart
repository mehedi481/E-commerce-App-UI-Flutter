import 'package:flutter/material.dart';

import 'components/body.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

