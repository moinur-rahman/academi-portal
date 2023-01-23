import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String imageURL, description, heading;

  CarouselItem({
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
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              description,
              style: TextStyle(
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
