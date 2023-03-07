import 'package:flutter/material.dart';

import '../../components/common/constant.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const AppBarWidget({
    super.key,
    required this.title,
    required this.height,
  });

  @override
  Size get preferredSize => Size.fromHeight(height * 0.08);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: Image(
          image: const AssetImage('assets/images/profile_avatar.png'),
          width: height * 0.05,
          height: height * 0.05,
        ),
      ),
      centerTitle: true,
    );
  }
}
