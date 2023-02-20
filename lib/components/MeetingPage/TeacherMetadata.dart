import 'package:flutter/material.dart';

import '../../view/sign_in_page.dart';

class TeacherMetadata extends StatelessWidget {
  final String yourData;

  TeacherMetadata(this.yourData) {
    print(this.yourData);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          Text(
            'Mir Md. Saki Kowsar',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                fontFamily: "Roboto"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
          ),
          Text(
            'Assistant Professor',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
