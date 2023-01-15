import 'package:flutter/material.dart';

import '../../view/sign_up_student.dart';
import '../../view/sign_up_teacher.dart';

class SignUpButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sign Up as a",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    SignUpTeacher.routeName,
                  ),
                  child: Text(
                    "Teacher",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    SignUpStudent.routeName,
                  ),
                  child: Text(
                    "Student",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
