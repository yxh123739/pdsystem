import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pdsystem/db/table_data_model.dart';

class MyTable extends StatelessWidget {
  const MyTable({
    super.key,
    required this.data,
    required this.headerData,
  });
  final Map<String, TableDataModel> data;
  final List<String> headerData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 1000,
        fixedLeftColumns: 0,
        bottomMargin: 0,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.grey[850]!),
        headingTextStyle: const TextStyle(color: Colors.blueGrey),
        dataTextStyle: const TextStyle(color: Colors.blueGrey),
        border: TableBorder.all(color: Colors.grey[400]!),
        columns: List<DataColumn>.generate(
          headerData.length,
          (index) => DataColumn(
            label: Center(
              child: Text(
                headerData[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        rows: List<DataRow>.generate(
          data.length,
          (index) => DataRow(
            cells: [
              DataCell(
                Center(
                  child: Text(
                    data.keys.toList()[index],
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    data.values.toList()[index].latestValue.toStringAsFixed(2),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    data.values.toList()[index].latestCollectTime,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    data.values.toList()[index].maxValue.toStringAsFixed(2),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Text(
                  data.values.toList()[index].maxCollectTime,
                  textAlign: TextAlign.center,
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    data.values.toList()[index].minValue.toStringAsFixed(2),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    data.values.toList()[index].minCollectTime,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DataCell(
                Center(
                  child: Text(
                    data.values.toList()[index].avgValue.toStringAsFixed(2),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
