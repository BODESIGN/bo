// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/widgets.dart';

class LABEL {
  LABEL({
    required this.text,
    required this.textColor,
    required this.textSize,
    this.weight = 'N', // or  B   or   L
  }) {
    setStyle();
  }

  String text;
  Color textColor;
  double textSize;
  String weight;
  late TextStyle style;

// ======================================

  setText(String _text) {
    text = _text;
  }

  setColorText(Color _textColor) {
    textColor = _textColor;
    setStyle();
  }

  setFontSize(double _textSize) {
    textSize = _textSize;
    setStyle();
  }

  setFontWeight(String _weight) {
    weight = _weight;
    setStyle();
  }

// ======================================

  setStyle() {
    style = TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: weight == 'B'
            ? FontWeight.bold
            : weight == 'L'
                ? FontWeight.w200
                : FontWeight.normal);
  }

// ======================================

  Text build([
    String? _text,
    Color? _color,
  ]) {
    return Text(_text ?? text, style: style);
  }
}
