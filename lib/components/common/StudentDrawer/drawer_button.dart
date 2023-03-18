import 'package:flutter/material.dart';

import '../constant.dart';

class DrawerButton extends StatelessWidget {
  final String buttonName, routeName;
  final IconData icon;

  const DrawerButton({
    required this.icon,
    required this.buttonName,
    required this.routeName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: SizedBox(
        width: width * 0.55,
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.black,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(height * 0.03, 0, 0, 0),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.bold,
                  color: AppColors.drawerButton,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
