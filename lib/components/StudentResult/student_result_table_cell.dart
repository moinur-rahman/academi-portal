import 'package:flutter/material.dart';

class TableCellElement extends StatelessWidget {
  final String content;
  final int color;
  TableCellElement(
    this.content,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        decoration: BoxDecoration(
          color: (color % 2 == 0) ? Colors.grey[200] : Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(content),
          ),
        ),
      ),
    );
  }
}
