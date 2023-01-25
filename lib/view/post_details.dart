import 'package:flutter/material.dart';

import '../components/PostDetails/post_widget.dart';
import '../components/PostDetails/attachment.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/common/student_app_bar.dart';
import '../components/common/student_drawer.dart';

import '../models/post.dart';

class PostDetails extends StatelessWidget {
  static const routeName = '/post-details';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
      appBar: StudentAppBar(),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: Container(
        child: Column(
          children: [
            PostWidget(args),
            Attachment(),
          ],
        ),
      ),
    );
  }
}
