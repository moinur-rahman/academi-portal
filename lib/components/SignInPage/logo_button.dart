import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {
  final String imageURL;

  LogoButton(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: CircleBorder(),
        side: BorderSide(width: 1.5),
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
