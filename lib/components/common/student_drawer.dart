import 'package:flutter/material.dart';

import './drawer_button.dart';

class StudentDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('images/profile_avatar.png'),
                    width: 60,
                    height: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          "Moinur Rahman",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        child: Text(
                          "Student",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 660,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 320,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DrawerButton(
                          icon: 0xe1b1,
                          buttonName: "Dashboard",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xf85d,
                          buttonName: "My Result",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xe491,
                          buttonName: "My Supervisor",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xe491,
                          buttonName: "My Course Teacher",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xe2eb,
                          buttonName: "Meeting",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xefed,
                          buttonName: "Notification",
                          color: 0xFF000000),
                    ],
                  ),
                ),
                SizedBox(
                  height: 160,
                  child: Column(
                    children: [
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      DrawerButton(
                          icon: 0xe302,
                          buttonName: "Help & Support",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xe1c5,
                          buttonName: "Developer Note",
                          color: 0xFF000000),
                      DrawerButton(
                          icon: 0xe243,
                          buttonName: "Log out",
                          color: 0xFFFF0000),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
