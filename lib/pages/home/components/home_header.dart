import 'package:ecommerce/pages/home/components/search_home.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'IconBtnCounter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: '/cart',
          ),
          IconBtnCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
          ),
        ],
      ),
    );
  }
}
