import 'package:flutter/material.dart';

class LogoButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
              side: BorderSide(width: 1.5),
            ),
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/images/fb_logo.png'),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
              side: BorderSide(width: 1.5),
            ),
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/images/google_logo.png'),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
              side: BorderSide(width: 1.5),
            ),
            onPressed: () {},
            child: Image(
              image: AssetImage('assets/images/apple_logo.png'),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
