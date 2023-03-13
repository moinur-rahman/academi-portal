import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/CreateAccount/divider_section.dart';
import '../components/CreateAccount/sign_up_button.dart';
import '../view/sign_up_teacher.dart';
import '../view/sign_up_student.dart';

class CreateAccount extends StatelessWidget {
  static const routeName = 'create-account';

  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarWidget(
        title: "Create Account",
        height: height,
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: height * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SignUpButton(
                name: "Sign up as a Teacher",
                routeName: SignUpTeacher.routeName,
              ),
              DividerSection(),
              SignUpButton(
                name: "Sign up as a Student",
                routeName: SignUpStudent.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
