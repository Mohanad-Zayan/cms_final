import 'package:cms_final/pages/About.dart';
import 'package:cms_final/pages/BirthPicker.dart';
import 'package:cms_final/pages/CircleAv.dart';
import 'package:cms_final/pages/EditProf.dart';
import 'package:cms_final/pages/Entry.dart';
import 'package:cms_final/pages/ForgetPw.dart';
import 'package:cms_final/pages/ResetPw.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/pages/genderPicker.dart';
import 'package:cms_final/pages/myCourses.dart';
import 'package:cms_final/pages/personalInfo.dart';
import 'package:cms_final/pages/semesters.dart';
import 'package:cms_final/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:About(),
    );
  }
}