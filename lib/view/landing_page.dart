import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/common/app_bar_widget.dart';
import '../components/LandingPage/sign_up_button.dart';
import '../components/LandingPage/login.dart';
import '../components/LandingPage/Carousel.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarWidget("AcademiPortal"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: 850,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}
