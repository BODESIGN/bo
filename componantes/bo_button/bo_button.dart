// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../bo_label/bo_label.dart';

// ======================================

String simpleButton = 'SIMPLE';
String textButton = 'TEXT';
String textIcon = 'ICON';

// ======================================

class $BUTTON extends StatefulWidget {
  $BUTTON({
    this.height = 55,
    required String text,
    this.type = 'SIMPLE'
  }) {
    setText($LABEL(text: text, textColor: color, textSize: 14));
  }

  @override
  State<$BUTTON> createState() => _boButton();

  String type;

  double height;
  double radius = 10;
  double elevation = 5;

  late $LABEL label;
  Color bg_color = Colors.brown;
  Color splash_color = Colors.blue;
  Color color = Colors.green;

  IconData icon = Icons.accessibility_rounded;

  double border_width = 0;
  Color border_color = Colors.transparent;

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
  // SIMPLE >> DEFAULT
  Widget simpleButton(BuildContext context) {
    // = 'SIMPLE'
    return SizedBox(
        height: widget.height,
        child: Card(
            elevation: widget.elevation,
            color: Colors.transparent,
            child: Ink(
                decoration: BoxDecoration(
                    color: widget.bg_color,
                    borderRadius: BorderRadius.circular(widget.radius),
                    border: Border.all(
                        width: widget.border_width,
                        color: widget.border_color)),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        splashColor: widget.splash_color,
                        borderRadius: BorderRadius.circular(widget.radius),
                        onTap: (() => {widget.action()}),
                        child: Center(
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: widget.label)))))));
  }

  // SIMPLE >> DEFAULT
  Widget textButton(BuildContext context) {
    // = 'TEXT'
    return SizedBox(
      height: widget.height,
      child:
          TextButton(onPressed: () => {widget.action()}, child: widget.label),
    );
  }

  // SIMPLE >> DEFAULT
  Widget iconButton(BuildContext context) {
    // = 'ICON'
    return SizedBox(
        height: widget.height,
        width: widget.height,
        child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: Ink(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(widget.height / 2)),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        splashColor: Colors.blue,
                        borderRadius: BorderRadius.circular(widget.height / 2),
                        onTap: (() => {widget.action()}),
                        child: Center(
                            child: Icon(widget.icon, color: widget.color)))))));
  }

  // => BUILD
  @override
  Widget build(BuildContext context) {
    return widget.type == 'TEXT'
        ? textButton(context)
        : widget.type == 'ICON'
            ? iconButton(context)
            : simpleButton(context);
  }
}
