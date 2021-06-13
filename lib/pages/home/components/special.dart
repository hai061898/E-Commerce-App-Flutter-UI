import 'package:ecommerce/data/special_data.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'special_card.dart';
import 'title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SectionTitle(
          title: "Special for you",
          press: () {},
        ),
      ),
      SizedBox(height: getProportionateScreenWidth(20)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              specialdata.length,
              (index) => SpecialOfferCard(
                    special: specialdata[index],
                    press: '',
                  )),
        ),
      ),
    ]);
  }
}
