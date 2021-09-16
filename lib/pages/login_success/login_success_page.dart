import 'package:flutter/material.dart';

import 'components/success_body.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Success"),),
      body: SuccessPageBody(),
    );
  }
}
