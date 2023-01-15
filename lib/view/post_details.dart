import 'package:flutter/material.dart';

import '../components/PostDetails/post_widget.dart';
import '../components/PostDetails/attachement.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/common/student_app_bar.dart';

import '../models/post.dart';

class PostDetails extends StatelessWidget {
  static const routeName = '/post-details';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
      appBar: StudentAppBar(),
      body: Container(
        child: Column(
          children: [
            PostWidget(args),
            Attachment(),
          ],
        ),
      ),
      bottomNavigationBar: StudentBottomBar(),
    );
  }
}
