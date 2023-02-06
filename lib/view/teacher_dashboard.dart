import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';

class TeacherDashboard extends StatelessWidget {
  static const routeName = 'teacher-dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget("Teacher Feed"),
      body: Container(child: Text("EHllo")),
    );
  }
}
