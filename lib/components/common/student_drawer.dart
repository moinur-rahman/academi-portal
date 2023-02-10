import 'package:flutter/material.dart';

import './drawer_button.dart';
import '../../view/student_dashboard.dart';
import '../../view/student_result.dart';
import '../../view/student_profile.dart';
import '../../view/teacher_list.dart';

class StudentDrawer extends StatelessWidget {
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
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.transparent),
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, StudentProfile.routeName);
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
                  height: 340,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DrawerButton(
                        icon: 0xe1b1,
                        buttonName: "Dashboard",
                        color: 0xFF000000,
                        routeName: StudentDashboard.routeName,
                      ),
                      DrawerButton(
                        icon: 0xf85d,
                        buttonName: "My Result",
                        color: 0xFF000000,
                        routeName: StudentResult.routeName,
                      ),
                      DrawerButton(
                        icon: 0xe491,
                        buttonName: "My Supervisor",
                        color: 0xFF000000,
                        routeName: '',
                      ),
                      DrawerButton(
                        icon: 0xe491,
                        buttonName: "My Course Teacher",
                        color: 0xFF000000,
                        routeName: TeacherList.routeName,
                      ),
                      DrawerButton(
                        icon: 0xe2eb,
                        buttonName: "Meeting",
                        color: 0xFF000000,
                        routeName: '',
                      ),
                      DrawerButton(
                        icon: 0xefed,
                        buttonName: "Notification",
                        color: 0xFF000000,
                        routeName: '',
                      ),
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
                        color: 0xFF000000,
                        routeName: '',
                      ),
                      DrawerButton(
                        icon: 0xe1c5,
                        buttonName: "Developer Note",
                        color: 0xFF000000,
                        routeName: '',
                      ),
                      DrawerButton(
                        icon: 0xe243,
                        buttonName: "Log out",
                        color: 0xFFFF0000,
                        routeName: '',
                      ),
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
