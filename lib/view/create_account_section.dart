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
    return Scaffold(
      appBar: AppBarWidget(
        title: "Create Account",
        height: height,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 300,
                height: 50,
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
                  child: const Text(
                    "Sign up as a Teacher",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                height: 50,
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
                  child: const Text(
                    "Sign up as a Student",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
