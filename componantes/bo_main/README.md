> afaka mampiasa :: loading (FACULTATIF)

> utilisation
mainBo(isHaveLoading: false, title: 'AMOI')
      ..initialRoot = 'HOME'
      ..screens = [
        const ScreenHome(rootName: 'HOME'),
        const ScreenProfile(rootName: 'PROFILE')
      ]
      
      
> like 

import 'package:bo/bo/componants/screen.dart';
import 'package:bo/bo/main/bo_main.dart';
import 'package:bo/bruillon/screen.dart';
import 'package:flutter/material.dart';

void main() {
  // FIREBASE

  // run APP
  runApp(
    mainBo(isHaveLoading: true, title: 'AMOI')
      ..initialRoot = 'HOME'
      ..screens = [
        const ScreenHome(rootName: 'HOME'),
        const ScreenProfile(rootName: 'PROFILE')
      ]
  );
}
