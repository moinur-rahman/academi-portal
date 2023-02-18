import 'package:academi_portal/models/teacher.dart';
import 'package:flutter/material.dart';

import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/common/app_bar_widget.dart';
import '../components/TeacherDetails/basic_info.dart';
import '../components/TeacherDetails/research_details.dart';
import '../components/TeacherDetails/contact_info.dart';
import '../components/TeacherDetails/publications.dart';

class TeacherDetails extends StatelessWidget {
  static const routeName = '/teacher-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Teacher;
    return Scaffold(
      appBar: AppBarWidget("Teacher Details"),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            BasicInfo(),
            ResearchDetails(),
            ContactInfo(),
            Publications()
          ],
        ),
      )),
    );
  }
}
