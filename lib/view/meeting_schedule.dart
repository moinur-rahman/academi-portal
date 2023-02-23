import 'package:academi_portal/components/MeetingPage/TeacherAvatar.dart';
import 'package:academi_portal/components/MeetingPage/TeacherConversation.dart';
import 'package:academi_portal/components/MeetingPage/TeacherMetadata.dart';
import 'package:academi_portal/components/common/student_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../components/common/app_bar_widget.dart';
import '../components/common/student_bottom_bar.dart';
import '../graphql/Teacher/teacher_queries.dart';

class MeetingSchedule extends StatefulWidget {
  static const routeName = '/meeting-schedule';
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<MeetingSchedule> {

  String? _email, _password;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      print('hello');

      String response = await TeacherQueries()
          .getTeacherById("1cb68ecf-397d-41cb-a04f-b6dba011c3ab");

      print(response);

    });
    return Scaffold(
      appBar: AppBarWidget('Schedule Meeting'),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            TeacherAvatar(),
            TeacherMetadata(''),
            TeacherConversation()
          ],
        ),
      ),),
    );
  }
}
