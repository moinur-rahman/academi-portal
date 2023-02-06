import 'package:flutter/material.dart';

import '../../models/post.dart';

class PostWidget extends StatelessWidget {
  final args;

  PostWidget(this.args);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              args.heading,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              args.createdAt,
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              args.text,
              style: TextStyle(fontSize: 17, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}