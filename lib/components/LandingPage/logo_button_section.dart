import 'package:flutter/material.dart';

class LogoButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Image(
              image: AssetImage('images/fb_logo.png'),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Image(
              image: AssetImage('images/google_logo.png'),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Image(
              image: AssetImage('images/apple_logo.png'),
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
