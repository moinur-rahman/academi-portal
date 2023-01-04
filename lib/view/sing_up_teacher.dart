import 'package:flutter/material.dart';

import '../components/AppBar/app_bar_widget.dart';

class SignUpTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text(
              "Sign up as a teacher",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
