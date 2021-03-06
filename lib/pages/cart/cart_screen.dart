import 'package:ecommerce/data/cart_data.dart';
import 'package:flutter/material.dart';


import 'components/body.dart';
import 'components/checkout_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCart(),
    );
  }
  AppBar buildAppBar(BuildContext context){
    return AppBar(
      title: Column( 
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
             style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}