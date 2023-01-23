import 'package:flutter/material.dart';

import '../components/common/app_bar_widget.dart';
import '../view/sign_up_teacher.dart';
import '../view/sign_up_student.dart';

class CreateAccount extends StatelessWidget {
  static const routeName = 'create-account';
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Create Account"),
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
                      {Navigator.pushNamed(context, SignUpTeacher.routeName)},
                  child: Text(
                    "Sign up as a Teacher",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.green,
                    side: BorderSide(
                      color: Colors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.grey,
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
                      {Navigator.pushNamed(context, SignUpStudent.routeName)},
                  child: Text(
                    "Sign up as a Student",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.green,
                    side: BorderSide(
                      color: Colors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
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
