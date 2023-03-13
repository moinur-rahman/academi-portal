import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:page_transition/page_transition.dart';

import './view/landing_page.dart';
import './view/sign_in_page.dart';
import './view/sign_up_teacher.dart';
import './view/sign_up_student.dart';
import './view/student_dashboard.dart';
import './view/post_details.dart';
import 'view/create_account.dart';
import './view/teacher_list.dart';
import './view/student_result.dart';
import './view/student_profile.dart';
import './view/teacher_dashboard.dart';
import './view/teacher_details.dart';
import './view/meeting_schedule.dart';
import './view/create_post.dart';
import './view/help_and_support.dart';

void main() async {
  await dotenv.load(fileName: "assets/config/dev.env");
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LandingPage.routeName,
      routes: {
        LandingPage.routeName: (context) => const LandingPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SignInPage.routeName:
            return PageTransition(
              child: const SignInPage(),
              type: PageTransitionType.leftToRight,
            );
          case CreateAccount.routeName:
            return PageTransition(
              child: const CreateAccount(),
              type: PageTransitionType.leftToRight,
            );
          case SignUpStudent.routeName:
            return PageTransition(
              child: const SignUpStudent(),
              type: PageTransitionType.leftToRight,
            );
          case SignUpTeacher.routeName:
            return PageTransition(
              child: SignUpTeacher(),
              type: PageTransitionType.leftToRight,
            );
          case StudentDashboard.routeName:
            return PageTransition(
              child: StudentDashboard(),
              type: PageTransitionType.leftToRight,
            );
          case TeacherDashboard.routeName:
            return PageTransition(
              child: TeacherDashboard(),
              type: PageTransitionType.leftToRight,
            );
          case PostDetails.routeName:
            return PageTransition(
              child: PostDetails(),
              type: PageTransitionType.leftToRight,
            );
          case CreatePost.routeName:
            return PageTransition(
              child: CreatePost(),
              type: PageTransitionType.leftToRight,
            );
          case TeacherList.routeName:
            return PageTransition(
              child: TeacherList(),
              type: PageTransitionType.leftToRight,
            );
          case TeacherDetails.routeName:
            return PageTransition(
              child: TeacherDetails(),
              type: PageTransitionType.leftToRight,
            );
          case MeetingSchedule.routeName:
            return PageTransition(
              child: MeetingSchedule(),
              type: PageTransitionType.leftToRight,
            );
          case HelpAndSupport.routeName:
            return PageTransition(
              child: HelpAndSupport(),
              type: PageTransitionType.leftToRight,
            );

          default:
            return null;
        }
      },
    );
  }
}
