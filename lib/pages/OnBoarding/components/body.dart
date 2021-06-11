import 'package:ecommerce/data/splash_data.dart';
import 'package:ecommerce/pages/OnBoarding/components/splash_content.dart';
import 'package:ecommerce/pages/SignIn/Sign_In_Screen.dart';
import 'package:ecommerce/utils/constants.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:ecommerce/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
   int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
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
                  splash: splashData[index],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press:'/sign_in',
                      
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}