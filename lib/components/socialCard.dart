import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:flutter/material.dart';
class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final icon;
  final press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
            color: Colors.white70,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1.5,
                blurRadius: 5.0,
                offset: Offset(0, 2),
              )
            ]
            // borderRadius: BorderRadius.circular(100)
            ),
        child: Center(
          child: Icon(
            icon,
            size: getProportionateScreenHeight(25),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
