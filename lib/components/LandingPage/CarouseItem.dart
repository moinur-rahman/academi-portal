import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String imageURL, description, heading;

  const CarouselItem({
    super.key,
    required this.imageURL,
    required this.heading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(imageURL),
            width: height * 0.25,
            height: height * 0.25,
          ),
          SizedBox(
            child: Text(
              heading,
              style: TextStyle(
                fontSize: height * 0.032,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.8,
            child: Text(
              description,
              style: TextStyle(
                fontSize: height * 0.020,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
