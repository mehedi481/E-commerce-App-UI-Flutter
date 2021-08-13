import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/pages/home_page/components/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}