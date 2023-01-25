import 'package:flutter/material.dart';

import '../components/common/student_app_bar.dart';
import '../components/common/student_drawer.dart';

class TeacherList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: StudentAppBar(),
      drawer: StudentDrawer(),
    );
  }
}
