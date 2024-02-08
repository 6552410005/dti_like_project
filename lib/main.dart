// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:dti_like_project/views/home_ui.dart';
import 'package:dti_like_project/views/splash_screen_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    //call main widget MaterialApp()
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(), //เรียกหน้าจอแรกของแอป
    ),
  );
}