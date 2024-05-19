import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/pages/login/login_page.dart';
import 'package:flutter/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : ({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext) => LoginPage()

      },
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: MyColors.primaryColor,
        ),
      ),
    );
  }
}
