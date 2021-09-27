import 'package:flutter/material.dart';

import 'components/otp_body.dart';

class OTP extends StatelessWidget {
  const OTP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verifiaction"),),
      body: OTPBody(),
    );
  }
}