// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class loadingBo {

  init() {
    EasyLoading.init();
  }

  setTheme(
    int duration,
    double size,
    bool isInteractible,
    bool isDismissable,
    Color colorProgress,
    Color colorBg,
  ) {
    EasyLoading.instance
      ..displayDuration = Duration(milliseconds: duration)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = size
      ..radius = size / 4
      ..progressColor = colorProgress
      ..backgroundColor = colorBg
      ..indicatorColor = colorProgress
      ..textColor = colorProgress
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = isInteractible
      ..dismissOnTap = isDismissable;
  }
}
