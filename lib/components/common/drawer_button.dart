import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String buttonName;
  final int icon;
  DrawerButton({required this.icon, required this.buttonName});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Container(
        width: 200,
        child: Row(
          children: [
            Icon(
              IconData(icon, fontFamily: 'MaterialIcons'),
              color: Colors.black,
            ),
            Text(
              buttonName,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
