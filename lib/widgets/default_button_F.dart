import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';


class DefaultButtonF extends StatelessWidget {
  const DefaultButtonF({Key? key, this.text, this.press}) : super(key: key);
  final String? text;
  final Function? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(56),
      child: TextButton(
        onPressed:() {press!;},
        
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