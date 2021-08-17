import 'package:e_commerce_app_ui/helpers/size_config/size_config.dart';
import 'package:e_commerce_app_ui/helpers/themes/themes.dart';
import 'package:e_commerce_app_ui/pages/home_page/components/splashComponent.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to SHOP APP", "image": "assets/images/onBoard1.png"},
    {
      "text": "Welcome to SHOP APP.We help people to connect with store",
      "image": "assets/images/onBoard2.png"
    },
    {
      "text": "Welcome to SHOP APP.Stay with us and use this app",
      "image": "assets/images/onBoard3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]["text"],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: mainCenter,
                  children: List.generate(
                    splashData.length,
                    (index) => dotMethod(index: index),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: ScreenSize.width * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Continue"),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer dotMethod({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Colors.blue,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
