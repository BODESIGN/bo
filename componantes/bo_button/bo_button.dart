// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../bo_label/bo_label.dart';

// ======================================

class $BUTTON extends StatefulWidget {
  $BUTTON({this.height = 55, this.color = Colors.green, required String text}) {
    setText($LABEL(text: text, textColor: Colors.yellowAccent, textSize: 14));
  }

  @override
  State<$BUTTON> createState() => _boButton();

  double height;
  late $LABEL label;
  Color bg_color = Colors.brown;
  Color color = Colors.green;
  Function action = () {};

  setText($LABEL label) {
    this.label = label;
  }

  setAction(Function action) {
    this.action = () {
      action();
    };
  }
}

class _boButton extends State<$BUTTON> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.height,
        child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: Ink(
                decoration: BoxDecoration(
                    color: widget.bg_color,
                    borderRadius: BorderRadius.circular(widget.height / 2)),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        splashColor: widget.bg_color.withOpacity(.3),
                        borderRadius: BorderRadius.circular(widget.height / 2),
                        onTap: (() => {widget.action()}),
                        child: Center(
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: widget.label)))))));
  }
}
