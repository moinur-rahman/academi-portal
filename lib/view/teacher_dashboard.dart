import 'dart:convert';

import 'package:flutter/material.dart';

import '../components/common/teacher_drawer.dart';
import '../components/common/teacher_bottom_bar.dart';
import '../components/common/app_bar_widget.dart';
import '../components/TeacherDashboard/data.dart';
import '../components/TeacherDashboard/post_widget.dart';

import '../graphql/Post/post_queries.dart';

class TeacherDashboard extends StatefulWidget {
  static const routeName = '/teacher-dashboard';
  @override
  State<StatefulWidget> createState() {
    return _TeacherDashboardState();
  }
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  List<dynamic> _data = [];
  bool _selectNavigation = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    var posts = jsonDecode(await PostQueries().getAllPosts());

    setState(() {
      posts = posts["getAllPosts"];
      _data = posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget("Teacher Feed"),
      drawer: TeacherDrawer(),
      bottomNavigationBar: TeacherBottomBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Class schedule",
                      style: TextStyle(
                        color: Color(0xFF349053),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  PostWidget(
                    title: "CSE-423",
                    created: "11:00 AM",
                    description: "Your next class is at 12:00 AM",
                  ),
                  PostWidget(
                    title: "CSE-424",
                    created: "12:00 AM",
                    description: "Your next lab is at 1:00 PM",
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Appointments schedule",
                      style: TextStyle(
                        color: Color(0xFF349053),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  PostWidget(
                    title: "Moinur Rahman requested an appointment",
                    created: "11:00 AM",
                    description:
                        "Sir I wanted to give you a update about ..See more",
                  ),
                  PostWidget(
                    title: "Fahim Arif requested an appointment",
                    created: "12:00 AM",
                    description:
                        "Sir I wanted to give you a update about ..See more",
                  ),
                  SizedBox(
                    width: 150,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Color(0xFF349053),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create-post');
                      },
                      child: Text('Create Post'),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
