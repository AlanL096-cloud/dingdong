// ignore_for_file: prefer_const_constructors

import 'package:dingdong/pages/cotorreo_page.dart';
import 'package:dingdong/pages/fiesta_page.dart';
import 'package:dingdong/pages/home_page.dart';
import 'package:dingdong/pages/login_page.dart';
import 'package:dingdong/pages/mundial_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DingDong',
      initialRoute: 'Home',
      routes: {
        'Login': (_) => Login(),
        'Home': (_) => Home(),
        'Fiesta': (_) => Fiesta(),
        'Cotorreo': (_) => Cotorreo(),
        'Mundial': (_) => Mundial(),
      },
    );
  }
}
