import 'package:ecommerce/routes.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/",
      getPages: routes(),
    );
  }
}