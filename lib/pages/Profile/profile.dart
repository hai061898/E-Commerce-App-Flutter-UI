import 'package:ecommerce/utils/enum.dart';
import 'package:ecommerce/widgets/customBottomNavbar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}