import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../components/LandingPage/CarouseItem.dart';
import '../../components/LandingPage/CarouselDot.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselState();
  }
}

class _CarouselState extends State<Carousel> {
  List<Map<String, String>> carouselItems = [
    {
      "imageURL": "assets/images/landing_page_image1.png",
      "heading": "Student Progress",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    },
    {
      "imageURL": "assets/images/landing_page_image2.png",
      "heading": "Student Teacher Collaboration",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    },
    {
      "imageURL": "assets/images/landing_page_image3.png",
      "heading": "Student Feed",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    },
    {
      "imageURL": "assets/images/landing_page_image4.png",
      "heading": "Student Teacher Interaction",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    }
  ];
  int itemNo = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 470,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 350,
            width: width,
            child: CarouselSlider(
              options: CarouselOptions(
                // height: 350,
                aspectRatio: 1,
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
                ...carouselItems.map((item) {
                  return CarouselItem(
                    imageURL: item["imageURL"]!,
                    heading: item["heading"]!,
                    description: item["description"]!,
                  );
                }).toList(),
              ],
            ),
          ),
          CarouselDot(itemNo),
        ],
      ),
    );
  }
}
