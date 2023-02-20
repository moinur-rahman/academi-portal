import 'package:flutter/material.dart';

import '../../view/sign_in_page.dart';

class TeacherAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200),
          ),
          Image(
            image: AssetImage('assets/images/saki_sir_hq.png'),
            width: 160,
            height: 160,
          ),
        ],
      ),
    );
  }
}
