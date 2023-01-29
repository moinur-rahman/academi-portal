import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';

class StudentResult extends StatelessWidget {
  static const routeName = '/student-result';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Student Result"),
      drawer: StudentDrawer(),
      body: Container(
        child: Text("Hello"),
      ),
    );
  }
}
