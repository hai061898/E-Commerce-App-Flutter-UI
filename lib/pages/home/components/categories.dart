import 'package:ecommerce/data/category_data.dart';
import 'package:ecommerce/pages/home/components/category_card.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(  
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(categories.length,(index) => CategoryCard(
          category: categories[index],
        )),
      ),
    );
  }
}