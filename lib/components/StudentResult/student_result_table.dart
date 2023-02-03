import 'package:flutter/material.dart';

import '../StudentResult/student_result_table_cell.dart';
import '../StudentResult/data.dart';

class StudentResultTable extends StatelessWidget {
  final List<Map<String, String>> tableData = data;

  //var index=0;

  @override
  Widget build(BuildContext context) {
    TableRow tableRow = TableRow(
      //decoration: BoxDecoration(color: Colors.green),
      children: <Widget>[
        //index < data.length?
        TableCellElement(data[0]['courseCode'] as String),
        TableCellElement(data[0]['gpa'] as String),
      ],
    );

    return Container(
      width: double.infinity,
      child: Table(
        // border: TableBorder.all(),
        defaultColumnWidth: const FixedColumnWidth(200.0),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          tableRow,
          tableRow,
          tableRow,
          tableRow,
          tableRow,
          tableRow,
        ],
      ),
    );
  }
}
