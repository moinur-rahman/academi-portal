import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String buttonName, routeName;
  final int icon;
  final int color;
  DrawerButton({
    required this.icon,
    required this.buttonName,
    required this.color,
    required this.routeName,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {Navigator.pushNamed(context, routeName)},
      child: Container(
        width: 200,
        child: Row(
          children: [
            Icon(
              IconData(icon, fontFamily: 'MaterialIcons'),
              color: Color(color),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(color),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
