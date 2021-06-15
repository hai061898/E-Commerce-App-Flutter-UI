import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(product: agrs.product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("Detail Product"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Get.back(),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
