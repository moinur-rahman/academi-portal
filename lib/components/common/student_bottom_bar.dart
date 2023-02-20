import 'package:academi_portal/view/student_result.dart';
import 'package:flutter/material.dart';

import '../../view/teacher_list.dart';
import '../../view/student_dashboard.dart';

class StudentBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentBottomBarState();
  }
}

class _StudentBottomBarState extends State<StudentBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, StudentDashboard.routeName),
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey,
            ),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  Text("Home"),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, TeacherList.routeName),
            },
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text("Teacher"),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.doorbell_outlined),
                  Text("Meeting"),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, StudentResult.routeName),
            },
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.list_alt_rounded),
                  Text("Result"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
