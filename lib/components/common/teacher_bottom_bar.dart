import 'package:academi_portal/view/create_post.dart';
import 'package:flutter/material.dart';

import '../../view/teacher_list.dart';
import '../../view/teacher_dashboard.dart';

class TeacherBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TeacherBottomBarState();
  }
}

class _TeacherBottomBarState extends State<TeacherBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, TeacherDashboard.routeName),
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
              Navigator.pushNamed(context, CreatePost.routeName),
            },
            style: TextButton.styleFrom(foregroundColor: Colors.grey),
            child: Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.post_add),
                  Text("Create post"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
