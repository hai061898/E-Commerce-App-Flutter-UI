import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, this.text, this.press}) : super(key: key);
  final String? text;
  final String? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(56),
      child: TextButton(
        onPressed: ()=>Get.toNamed(press!),
        
        style: ButtonStyle(
          backgroundColor:  MaterialStateProperty.all<Color>(Colors.indigo.shade300),
          
        ),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
