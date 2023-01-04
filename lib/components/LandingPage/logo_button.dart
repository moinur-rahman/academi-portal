import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {
  final String imageURL;

  LogoButton(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      onPressed: () {},
      child: Image(
        image: AssetImage(imageURL),
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}
