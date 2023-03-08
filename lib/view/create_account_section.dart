import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../components/common/constant.dart';
import '../view/sign_up_teacher.dart';
import '../view/sign_up_student.dart';

class CreateAccount extends StatelessWidget {
  static const routeName = 'create-account';

  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarWidget(
        title: "Create Account",
        height: height,
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: height * 0.28,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.7,
                height: height * 0.08,
                child: OutlinedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, SignUpTeacher.routeName),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.green,
                    side: const BorderSide(
                      color: AppColors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Sign up as a Teacher",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.026,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: height * 0.026,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.7,
                height: height * 0.08,
                child: OutlinedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, SignUpStudent.routeName),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.green,
                    side: const BorderSide(
                      color: AppColors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Sign up as a Student",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.026,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
