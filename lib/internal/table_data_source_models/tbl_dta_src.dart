import 'package:flutter/material.dart';
import 'package:glamgear/global_hlpr_n_wdgt/wid_txt_scle_wrppr.dart';

class TableDataSource extends DataTableSource {
  static const List<int> _displayIndexToRawIndex = <int>[0, 3, 4, 5, 6];

  late List<List<Comparable<Object>>> _sortedData;

  void setData(List<List<Comparable<Object>>> rawData, int sortColumn,
      bool sortAscending) {
    // required to be set as public
    _sortedData = rawData.toList()
      ..sort((List<Comparable<Object>> a, List<Comparable<Object>> b) {
        final Comparable<Object> cellA = a[_displayIndexToRawIndex[sortColumn]];
        final Comparable<Object> cellB = b[_displayIndexToRawIndex[sortColumn]];
        return cellA.compareTo(cellB) * (sortAscending ? 1 : -1);
      });
    notifyListeners();
  }

  @override
  int get rowCount => _sortedData.length;

  static DataCell _cellFor(Object data) {
    String value;
    if (data is DateTime) {
      value =
          '${data.year}-${data.month.toString().padLeft(2, '0')}-${data.day.toString().padLeft(2, '0')}';
    } else {
      value = data.toString();
    }
    return DataCell(RetainTextScaleWrapper(child: Text(value)));
  }

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: _sortedData[index][0] as int,
      cells: <DataCell>[
        _cellFor(
            'S${_sortedData[index][1]}E${_sortedData[index][2].toString().padLeft(2, '0')}'),
        _cellFor(_sortedData[index][3]),
        _cellFor(_sortedData[index][4]),
        _cellFor(_sortedData[index][5]),
        _cellFor(_sortedData[index][6]),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
