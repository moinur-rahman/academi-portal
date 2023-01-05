import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('images/student.png'),
        width: 300,
        height: 200,
      ),
    );
  }
}
