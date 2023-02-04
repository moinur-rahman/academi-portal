import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  AppBarWidget(this.title);

  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: Image(
          image: AssetImage('images/profile_avatar.png'),
          width: 40,
          height: 40,
        ),
      ),
      centerTitle: true,
    );
  }
}
