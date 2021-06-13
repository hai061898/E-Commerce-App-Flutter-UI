import 'package:ecommerce/utils/enum.dart';
import 'package:ecommerce/widgets/customBottomNavbar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}