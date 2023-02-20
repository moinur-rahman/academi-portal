import 'package:flutter/material.dart';
import './border_line.dart';

class QuestionPortion extends StatelessWidget {
  const QuestionPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2, 20, 2, 10),
      width: double.infinity,
      height: 350,
      child: Column(
        children: [
          SizedBox(
            height: 30,
            width: double.infinity,
            child: Text(
              "How To Take an Appointment?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text(
              "Sign In Issues?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text(
              "Account Got Hacked",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text(
              "Reset Result History?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text(
              "Data not Rendering?",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Text(
              "Others",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 174, 173, 173),
          ),
        ],
      ),
    );
  }
}
