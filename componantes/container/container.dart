import 'package:flutter/cupertino.dart';

class CONTAINER {
  CONTAINER({this.type = 'Default', required this.childs}) {
    build();
  }

  String type; // Column - Row - Center - Default
  List<Widget> childs;

  // column
  Widget buildColumn() {
    return Column(
      children: childs,
    );
  }

  // Row
  Widget buildRow() {
    return Row(
      children: childs,
    );
  }

  // Default - Center
  Widget buildContainer(bool isCenter) {
    return Container(child: isCenter ? Center(child: childs[0]) : childs[0]);
  }

  //
  Widget build() {
    if (type == 'Column') return buildColumn();
    if (type == 'Row') return buildRow();
    if (type == 'Center') return buildContainer(true);
    // default
    return buildContainer(false);
  }
}
