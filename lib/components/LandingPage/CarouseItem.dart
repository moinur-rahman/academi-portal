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
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Image(
              image: AssetImage(imageURL),
              width: 200,
              height: 200,
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
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
