import 'package:flutter/material.dart';

class TableCellElement extends StatelessWidget {
  final String content;

  TableCellElement(this.content);

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(content),
        ),
      ),
    );
  }
}
