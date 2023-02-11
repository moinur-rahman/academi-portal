import 'package:flutter/material.dart';

import '../../view/teacher_details.dart';
import '../../models/teacher.dart';

class TeacherWidget extends StatelessWidget {
  final String imageURL, name, email;
  final List<String> courses;

  TeacherWidget({
    required this.imageURL,
    required this.name,
    required this.courses,
    required this.email,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.grey.shade300,
        )),
        width: 380,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage(imageURL),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...courses.map((data) => Text(data)).toList(),
                ],
              ),
            ),
            SizedBox(
              width: 200,
              child: Text(email),
            ),
            SizedBox(
              width: 240,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    TeacherDetails.routeName,
                    arguments: Teacher(email: email),
                  );
                },
                child: Text(
                  "View Profile",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
