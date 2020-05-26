import 'package:flutter/material.dart';

DataTable parseTable(Map<String, List<String>> dataMap) {
  return DataTable(columns: [
    for (final lable in dataMap.keys) DataColumn(label: Text(lable))
  ], rows: [
    for (final row in dataMap.values)
      DataRow(cells: [
        for (final cell in row)
          DataCell(
            Text(cell),
          ),
      ])
  ]);
}
