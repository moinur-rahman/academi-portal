import 'package:flutter/material.dart';
import 'dart:math';

import '../components/common/app_bar_widget.dart';
import '../components/LandingPage/sign_up_button.dart';
import '../components/LandingPage/login.dart';
import '../components/LandingPage/Carousel.dart';

class LandingPage extends StatelessWidget {
  static const routeName = '/';
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarWidget(
        title: "AcademiPortal",
        height: height,
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Center(
          child: SizedBox(
            width: width,
            height: height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Carousel(),
                SizedBox(
                  child: Column(
                    children: const [
                      SignUpButton(),
                      Login(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
