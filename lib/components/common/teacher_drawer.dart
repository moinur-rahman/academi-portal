import 'dart:convert';

import 'package:academi_portal/api/shared_preferences.dart';
import 'package:flutter/material.dart';

import 'StudentDrawer/drawer_button.dart';
import '../../view/teacher_dashboard.dart';
import '../../view/create_post.dart';
import '../../view/sign_in_page.dart';

class TeacherDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TeacherDrawerState();
  }
}

class _TeacherDrawerState extends State<TeacherDrawer> {
  @override
  void initState() {
    super.initState();
    _onInit();
  }

  String name = "";

  Future _onInit() async {
    var data = jsonDecode(await getData("user"));
    setState(() {
      name = data["teacherLogin"]["name"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      child: Column(
        children: [
          SizedBox(
            height: 160,
            width: 260,
            child: DrawerHeader(
              child: OutlinedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('assets/images/profile_avatar.png'),
                      width: 60,
                      height: 60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 130,
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            "Teacher",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.transparent),
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '');
                },
              ),
            ),
          ),
          SizedBox(
            height: 660,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // DrawerButton(
                      //   icon: 0xe1b1,
                      //   buttonName: "Dashboard",
                      //   routeName: TeacherDashboard.routeName,
                      // ),
                      // DrawerButton(
                      //   icon: 0xf85d,
                      //   buttonName: "Create Post",
                      //   routeName: CreatePost.routeName,
                      // ),
                      // DrawerButton(
                      //   icon: 0xe2eb,
                      //   buttonName: "Meeting",
                      //   routeName: CreatePost.routeName,
                      // ),
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
                      // DrawerButton(
                      //   icon: 0xe302,
                      //   buttonName: "Help & Support",
                      //   routeName: '',
                      // ),
                      // DrawerButton(
                      //   icon: 0xe1c5,
                      //   buttonName: "Developer Note",
                      //   routeName: '',
                      // ),
                      // DrawerButton(
                      //   icon: 0xe243,
                      //   buttonName: "Log out",
                      //   routeName: SignInPage.routeName,
                      // ),
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
