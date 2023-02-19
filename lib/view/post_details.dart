import 'package:academi_portal/components/PostDetails/private_comment.dart';
import 'package:flutter/material.dart';

import '../components/PostDetails/post_widget.dart';
import '../components/PostDetails/attachment.dart';
import '../components/PostDetails/description.dart';
import '../components/common/student_bottom_bar.dart';
import '../components/common/app_bar_widget.dart';
import '../components/common/student_drawer.dart';

import '../models/post.dart';

class PostDetails extends StatelessWidget {
  static const routeName = '/post-details';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
      appBar: AppBarWidget("Student Feed"),
      drawer: StudentDrawer(),
      bottomNavigationBar: StudentBottomBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 880,
          child: Column(
            children: [
              // PostWidget(args),
              Description(args),
              Attachment(),
              PrivateComment(),
            ],
          ),
        ),
      ),
    );
  }
}
