import 'package:flutter/material.dart';
import 'dart:convert';

import '../components/common/app_bar_widget.dart';
import '../components/common/teacher_drawer.dart';
import '../api/shared_preferences.dart';
import '../graphql/Post/post_mutations.dart';
import '../models/post.dart';

class TeacherDashboard extends StatefulWidget {
  static const routeName = '/teacher-dashboard';

  @override
  State<StatefulWidget> createState() {
    return _TeacherDashboardState();
  }
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  String? _title, _description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget("Teacher Feed"),
      drawer: TeacherDrawer(),
      body: Container(
        child: Text("Dashboard"),
      ),
    );
  }
}
