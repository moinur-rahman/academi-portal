import 'dart:convert';

import 'package:flutter/material.dart';

import '../../view/student_dashboard.dart';
import '../../api/shared_preferences.dart';

import '../../models/user.dart';
import '../../graphql/user_login.dart';

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  String? _email, _password;

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
            onChanged: ((String? value) {
              _email = value;
            }),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
            onChanged: ((String? value) {
              _password = value;
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.green),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text(
                    "Remember Password",
                    style: TextStyle(
                      color: Color(0xff6B6B6B),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color(0xff6B6B6B),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: OutlinedButton(
              onPressed: () async {
                // String status = await UserLogin().login(User(
                //   email: _email,
                //   password: _password,
                // ));
                Navigator.pushNamed(context, StudentDashboard.routeName);
              },
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: BorderSide(
                    color: Colors.green,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
