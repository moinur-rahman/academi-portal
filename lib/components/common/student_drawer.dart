import 'dart:convert';

import 'package:academi_portal/api/shared_preferences.dart';
import 'package:academi_portal/components/common/constant.dart';
import 'package:academi_portal/view/help_and_support.dart';
import 'package:academi_portal/view/meeting_schedule.dart';
import 'package:flutter/material.dart';

import 'StudentDrawer/drawer_button.dart';
import '../../view/student_dashboard.dart';
import '../../view/student_result.dart';
import '../../view/student_profile.dart';
import '../../view/teacher_list.dart';
import '../../view/sign_in_page.dart';
import './StudentDrawer/profile_section.dart';

class StudentDrawer extends StatefulWidget {
  const StudentDrawer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StudentDrawerState();
  }
}

class _StudentDrawerState extends State<StudentDrawer> {
  @override
  void initState() {
    super.initState();
    _onInit();
  }

  String name = "";

  List<Map<String, dynamic>> drawerButtonElementsTop = [
    {
      'icon': Icons.dashboard,
      'buttonName': "Dashboard",
      'routeName': StudentDashboard.routeName,
    },
    {
      'icon': Icons.list_alt_rounded,
      'buttonName': "Result",
      'routeName': StudentResult.routeName,
    },
    {
      'icon': Icons.person,
      'buttonName': "My Supervisor",
      'routeName': TeacherList.routeName,
    },
    {
      'icon': Icons.person,
      'buttonName': "My Course Teacher",
      'routeName': TeacherList.routeName,
    },
    {
      'icon': Icons.group,
      'buttonName': "Meeting Schedule",
      'routeName': MeetingSchedule.routeName,
    },
  ];

  List<Map<String, dynamic>> drawerButtonElementsBottom = [
    {
      'icon': Icons.help,
      'buttonName': "Help & Support",
      'routeName': HelpAndSupport.routeName,
    },
    {
      'icon': Icons.person,
      'buttonName': "Developer Note",
      'routeName': StudentProfile.routeName,
    },
    {
      'icon': Icons.logout,
      'buttonName': "Log out",
      'routeName': SignInPage.routeName,
    },
  ];

  Future _onInit() async {
    var data = jsonDecode(await getData("user"));
    setState(() {
      name = data["studentLogin"]["name"];
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
      width: width * 0.68,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.15,
            child: DrawerHeader(
              child: ProfileSection(
                name: name,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 0.50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...drawerButtonElementsTop.map((element) {
                        return DrawerButton(
                          icon: element['icon'],
                          buttonName: element['buttonName'],
                          routeName: element['routeName'],
                        );
                      })
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.30,
                  child: Column(
                    children: [
                      const Divider(
                        color: AppColors.black,
                        thickness: 1,
                      ),
                      ...drawerButtonElementsBottom.map((element) {
                        return DrawerButton(
                          icon: element['icon'],
                          buttonName: element['buttonName'],
                          routeName: element['routeName'],
                        );
                      })
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
