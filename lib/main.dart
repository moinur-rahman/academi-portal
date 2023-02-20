import 'package:academi_portal/view/help_and_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import './view/landing_page.dart';
import './view/sign_in_page.dart';
import './view/sign_up_teacher.dart';
import './view/sign_up_student.dart';
import './view/student_dashboard.dart';
import './view/post_details.dart';
import './view/create_account_section.dart';
import './view/teacher_list.dart';
import './view/student_result.dart';
import './view/student_profile.dart';
import './view/teacher_dashboard.dart';
import './view/teacher_details.dart';
import './view/meeting_schedule.dart';
import './view/create_post.dart';
import './view/help_and_support.dart';
import './view/developer_note.dart';

void main() async {
  await dotenv.load(fileName: "assets/config/dev.env");
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LandingPage(),r
      theme: ThemeData(fontFamily: 'Raleway'),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        MeetingSchedule.routeName: (context) => MeetingSchedule(),
        SignInPage.routeName: (context) => SignInPage(),
        CreateAccount.routeName: (context) => CreateAccount(),
        SignUpTeacher.routeName: (context) => SignUpTeacher(),
        SignUpStudent.routeName: (context) => SignUpStudent(),
        StudentDashboard.routeName: (context) => StudentDashboard(),
        PostDetails.routeName: (context) => PostDetails(),
        TeacherList.routeName: (context) => TeacherList(),
        TeacherDashboard.routeName: (context) => TeacherDashboard(),
        CreatePost.routeName: (context) => CreatePost(),
        TeacherDetails.routeName: (context) => TeacherDetails(),
        StudentResult.routeName: (context) => StudentResult(),
        StudentProfile.routeName: (context) => StudentProfile(),
        StudentProfile.routeName: (context) => StudentProfile(),
        HelpAndSupport.routeName: (context) => HelpAndSupport(),
        DeveloperNote.routeName: (context) => DeveloperNote(),
      },
    );
  }
}
