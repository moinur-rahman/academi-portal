import 'package:flutter/material.dart';
import 'package:academi_portal/components/common/app_bar_widget.dart';
import 'package:academi_portal/components/common/student_bottom_bar.dart';
import 'package:academi_portal/components/common/student_drawer.dart';
import '../components/HelpAndSupport/contact_section.dart';
import '../components/HelpAndSupport/question_portion.dart';
import '../components/HelpAndSupport/search_box.dart';

class HelpAndSupport extends StatelessWidget {
  static const routeName = '/help-and-support';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Help & Support'),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SearchBox(),
              QuestionPortion(),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
