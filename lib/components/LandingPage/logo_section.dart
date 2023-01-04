import 'package:flutter/material.dart';

import './logo_button.dart';

class LogoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LogoButton('images/fb_logo.png'),
        LogoButton('images/google_logo.png'),
        LogoButton('images/apple_logo.png'),
      ],
    );
  }
}
