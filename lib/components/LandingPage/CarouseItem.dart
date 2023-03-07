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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 16 / 6,
            child: Image(
              image: AssetImage(imageURL),
            ),
          ),
          SizedBox(
            child: Text(
              heading,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
