import 'package:flutter/material.dart';

import 'components/complete_profile_body.dart';
class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),),
      body: CompleteProfileBody(),
    );
  }
}
