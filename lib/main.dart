import 'package:flutter/material.dart';

import './view/landing_page.dart';
import './view/sign_in_page.dart';
import './view/sign_up_teacher.dart';
import './view/sign_up_student.dart';
import './view/student_dashboard.dart';
import './view/post_details.dart';
import './view/create_account_section.dart';
import './view/teacher_list.dart';
import './view/student_result.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LandingPage(),
      initialRoute: '/',
      routes: {
        // '/': (context) => LandingPage(),
        // SignInPage.routeName: (context) => SignInPage(),
        // CreateAccount.routeName: (context) => CreateAccount(),
        // SignUpTeacher.routeName: (context) => SignUpTeacher(),
        // SignUpStudent.routeName: (context) => SignUpStudent(),
        // StudentDashboard.routeName: (context) => StudentDashboard(),
        // PostDetails.routeName: (context) => PostDetails(),
        // TeacherList.routeName: (context) => TeacherList(),
        '/': (context) => StudentResult(),
      },
    );
  }
}
