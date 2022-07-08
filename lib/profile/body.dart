import 'package:flutter/material.dart';
import 'package:flutter_restapi/pages/login_page.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User_Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Logout.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
        ],
      ),
    );
  }
}
