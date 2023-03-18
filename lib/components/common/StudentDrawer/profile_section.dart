import 'package:flutter/material.dart';

import '../../../view/student_profile.dart';

class ProfileSection extends StatelessWidget {
  final String name;

  const ProfileSection({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.transparent),
        foregroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.pushNamed(context, StudentProfile.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: const AssetImage('assets/images/profile_avatar.png'),
            width: height * 0.08,
            height: height * 0.08,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 130,
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 130,
                child: Text(
                  "Student",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
