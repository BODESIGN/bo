// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:bo/bo/main/bo_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ====================================================================

class mainBo extends StatelessWidget {
  mainBo({
    super.key,
    required this.title,
    required this.isHaveLoading
  });

  String title;
  bool isDebug = false;
  bool isDark = false;
  bool isHaveLoading;
  String initialRoot = '/testScreen';
  List screens = [
    const ScreenTest(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarIconBrightness:
          isDark ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder()
            }),
            primaryColor: Colors.black),
        builder: isHaveLoading ? loadingBo().init() : null, // TODO: install > bo_loading
        initialRoute: initialRoot,
        routes: {
          for (var n = 0; n < screens.length; n++)
            screens[n].rootName.toString(): (context) => screens[n],
        });
  }
}
