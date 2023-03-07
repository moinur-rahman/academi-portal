import 'package:flutter/material.dart';

class LogoButtonSection extends StatelessWidget {
  const LogoButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double buttonHeight = height * 0.065;
    return SizedBox(
      width: width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(width: 1.5),
            ),
            onPressed: () {},
            child: Image(
              image: const AssetImage('assets/images/fb_logo.png'),
              width: buttonHeight,
              height: buttonHeight,
              fit: BoxFit.cover,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(width: 1.5),
            ),
            onPressed: () {},
            child: Image(
              image: const AssetImage('assets/images/google_logo.png'),
              width: buttonHeight,
              height: buttonHeight,
              fit: BoxFit.cover,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(width: 1.5),
            ),
            onPressed: () {},
            child: Image(
              image: const AssetImage('assets/images/apple_logo.png'),
              width: buttonHeight,
              height: buttonHeight,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
