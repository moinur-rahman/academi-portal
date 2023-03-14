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
  List<Map<String, dynamic>> carouselItems = [
    {
      "index": 0,
      "imageURL": "assets/images/landing_page_image1.png",
      "heading": "Student Progress",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    },
    {
      "index": 1,
      "imageURL": "assets/images/landing_page_image2.png",
      "heading": "Student Teacher Collaboration",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    },
    {
      "index": 2,
      "imageURL": "assets/images/landing_page_image3.png",
      "heading": "Student Feed",
      "description":
          "Student and teacher can easily interact with each other and get update in a instant."
    },
    {
      "index": 3,
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
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height * 0.55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width,
            height: height * 0.45,
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
                    imageURL: item["imageURL"]! as String,
                    heading: item["heading"]! as String,
                    description: item["description"]! as String,
                  );
                }).toList(),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...carouselItems.map((item) {
                  return CarouselDot(
                    index: item["index"]! as int,
                    itemNo: itemNo,
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
