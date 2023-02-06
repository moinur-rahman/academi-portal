import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';

class TeacherList extends StatelessWidget {
  static const routeName = '/teacher-list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget("Student Feed"),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
    );
  }
}
