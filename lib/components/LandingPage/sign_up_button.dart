import 'package:flutter/material.dart';

import '../../view/sign_up_student.dart';
import '../../view/sign_up_teacher.dart';

class SignUpButton extends StatelessWidget {
  final String buttonName;

  SignUpButton(this.buttonName);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          buttonName == 'Student'
              ? SignUpStudent.routeName
              : SignUpTeacher.routeName,
        ),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
