import 'package:flutter/material.dart';

import '../../view/post_details.dart';
import '../../models/post.dart';

class PostWidget extends StatelessWidget {
  final String title, created, description;

  PostWidget({
    required this.title,
    required this.created,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Divider(color: Color(0xFFDBDBDB)),
          SizedBox(
            height: 30,
            width: double.infinity,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              created,
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Divider(color: Color(0xFFDBDBDB)),
        ],
      ),
    );
  }
}
