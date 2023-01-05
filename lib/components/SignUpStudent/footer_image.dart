import 'package:flutter/material.dart';

class FooterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('images/footer_image.png'),
        width: double.infinity,
        height: 122,
        fit: BoxFit.cover,
      ),
    );
  }
}
