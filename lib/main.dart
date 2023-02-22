import 'package:flutter/material.dart';
import 'package:screen_devision/birthdayCard.dart';
import 'package:screen_devision/first_division.dart';
import 'package:screen_devision/components/login.dart';
import 'package:screen_devision/components/personalDetails.dart';
import 'package:screen_devision/apcInfo.dart';
import 'package:screen_devision/second_division.dart';
import 'package:screen_devision/components/studyDetails.dart';
import 'package:screen_devision/components/test.dart';
void main() {
  runApp(
    MaterialApp(
       debugShowCheckedModeBanner: false ,
      home: SafeArea(child: Scaffold(body: MyHomePage())),
    ),
  );
}
