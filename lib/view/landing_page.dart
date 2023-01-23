import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/common/app_bar_widget.dart';
import '../components/LandingPage/sign_up_button.dart';
import '../components/LandingPage/login.dart';
import '../components/LandingPage/CarouseItem.dart';
import '../components/LandingPage/CarouselDot.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<LandingPage> {
  int itemNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("AcademiPortal"),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 350,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: (val, _) {
                  setState(() {
                    itemNo = val;
                  });
                },
              ),
              items: [
                CarouselItem(
                  imageURL: 'images/landing_page_image1.png',
                  heading: "Student Progress",
                  description:
                      "Student and teacher can easily interact with each other and get update in a instant.",
                ),
                CarouselItem(
                  imageURL: 'images/landing_page_image2.png',
                  heading: "Student Teacher Collaboration",
                  description:
                      "Student and teacher can easily interact with each  other and get update in a instant.",
                ),
                CarouselItem(
                  imageURL: 'images/landing_page_image3.png',
                  heading: "Student Feed",
                  description:
                      "Student and teacher can easily interact with each other and get update in a instant.",
                ),
                CarouselItem(
                  imageURL: 'images/landing_page_image4.png',
                  heading: "Student Teacher Interaction",
                  description:
                      "Student and teacher can easily interact with each other and get update in a instant.",
                ),
              ],
            ),
            CarouselDot(itemNo),
            SizedBox(
              child: Column(
                children: [
                  SignUpButton(),
                  Login(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
