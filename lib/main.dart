// ignore_for_file: prefer_const_constructors

import 'package:dingdong/pages/reventon_page.dart';
import 'package:dingdong/pages/fiesta_page.dart';
import 'package:dingdong/pages/home_page.dart';
import 'package:dingdong/pages/login_page.dart';
import 'package:dingdong/pages/mundial_page.dart';
import 'package:dingdong/pages/sign_up.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DingDong',
      initialRoute: 'SingUp',
      routes: {
        'Login': (_) => Login(),
        'SingUp': (_) => SignUp(),
        'Home': (_) => Home(),
        'Fiesta': (_) => Fiesta(),
        'Reventon': (_) => Reventon(),
        'Mundial': (_) => Mundial(),
      },
    );
  }
}
