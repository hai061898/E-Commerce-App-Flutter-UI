import 'package:ecommerce/pages/home/components/banner.dart';
import 'package:ecommerce/pages/home/components/popular_products.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'home_header.dart';
import 'special.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(  
        child: Column(  
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DisCountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}