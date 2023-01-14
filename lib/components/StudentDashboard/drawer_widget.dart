import 'package:flutter/material.dart';

import '../common/drawer_button.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      child: Column(
        children: [
          SizedBox(
            height: 105,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF00005C)),
              child: Center(
                child: Text(
                  "AcademiPortal",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          DrawerButton(icon: 0xe1b1, buttonName: "Dashboard"),
          DrawerButton(icon: 0xe1b1, buttonName: "Result"),
        ],
      ),
    );
  }
}
