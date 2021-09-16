import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:flutter/material.dart';

class SuccessPageBody extends StatelessWidget {
  const SuccessPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Icon(
                  Icons.done,
                  size: getProportionateScreenHeight(100),
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Login Success"),
                  SizedBox(
                    width: ScreenSize.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Back to home"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
