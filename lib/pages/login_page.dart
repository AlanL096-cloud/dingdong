import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options:  ParticleOptions(
            spawnMaxRadius: 50,
            spawnMinSpeed: 10,
            particleCount: 60,
            spawnMaxSpeed: 50,
            minOpacity: 0.3,
            spawnOpacity: 0.4,
            baseColor: Colors.blue,
            image: Image.network("https://static.vecteezy.com/system/resources/previews/008/507/614/original/abstract-elements-retro-style-80s-90s-free-png.png")
          ),
        ),
        vsync: this,
        child:  Center(
          child: Container(
            height: 600,
            width: 325,
            decoration: BoxDecoration(
              color: Color.fromARGB(82, 255, 255, 255).withOpacity(0.80),
              borderRadius: BorderRadius.circular(10)
            ), 
          ),
        ),
      ),
    );
  }
}