import 'package:flutter/material.dart';

import '../../view/post_details.dart';
import '../../models/post.dart';

class PostWidget extends StatelessWidget {
  final String heading, createdAt, text;

  PostWidget({
    required this.heading,
    required this.createdAt,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: TextButton(
        onPressed: (() => {
              Navigator.pushNamed(
                context,
                PostDetails.routeName,
                arguments: Post(
                  heading: heading,
                  createdAt: createdAt,
                  text: text,
                ),
              ),
            }),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
        ),
        child: Container(
          height: 150,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 45,
                width: double.infinity,
                child: Text(
                  heading,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  createdAt,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
