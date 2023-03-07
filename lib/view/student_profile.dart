import 'package:academi_portal/components/StudentProfile/student_contact_info.dart';
import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/StudentProfile/image_edit_button.dart';
import '../components/StudentProfile/student_info.dart';
import '../components/StudentProfile/student_result_info.dart';
import '../components/StudentProfile/student_educational_info.dart';
import '../components/StudentProfile/student_contact_info.dart';

class StudentProfile extends StatelessWidget {
  static const routeName = '/student-profile';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBarWidget(
        title: "Profile",
        height: height,
      ),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 18),
          height: 1030,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              StudentProfileImageWithEditButton(),
              StudentInfo(),
              StudentResultInfo(),
              SizedBox(
                height: 80,
                child: Text(
                  'CGPA: 3.33',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xff349053),
                  ),
                ),
              ),
              StudentEducationalInfo(),
              StudentContactInfo()
            ],
          ),
        ),
      ),
    );
  }
}
