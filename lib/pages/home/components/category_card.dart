import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({ Key? key,this.press,required  this.category }) : super(key: key);
  final String? press;
  final CategoryModel category;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> Get.toNamed(press!),
      child: SizedBox(  
        width: getProportionateScreenWidth(55),
        child: Column(  
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(  
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: SvgPicture.asset(category.icon!),

            ),
            SizedBox(height: 5),
            Text(category.text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}