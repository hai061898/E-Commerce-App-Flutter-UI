import 'package:ecommerce/models/splash_model.dart';
import 'package:ecommerce/utils/constants.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final SplashModel splash;
  const SplashContent({Key? key, required this.splash})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "SKYWAKER",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          splash.text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          splash.image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
