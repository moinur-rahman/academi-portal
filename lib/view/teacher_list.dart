import 'package:flutter/material.dart';

import '../components/common/student_app_bar.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';

class TeacherList extends StatelessWidget {
  static const routeName = '/teacher-list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: StudentAppBar(),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
    );
  }
}
