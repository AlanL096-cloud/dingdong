// ignore_for_file: prefer_const_constructors

import 'package:dingdong/pages/reventon_page.dart';
import 'package:dingdong/pages/fiesta_page.dart';
import 'package:dingdong/pages/mundial_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ElevatedButton(
              onPressed: () {
                  Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const Fiesta()));
                },
              child: Text('¡modo Fiesta!'),
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const Reventon()));
                },
              child: Text('¡modo Cotorreo!'),
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const Mundial()));
                },
              child: Text('¡modo Mundial!'),
            ),
          ],
        ),
      )
    );
  }
}