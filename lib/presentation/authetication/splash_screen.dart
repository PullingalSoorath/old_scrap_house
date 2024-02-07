import 'dart:async';

import 'package:flutter/material.dart';
import 'package:old_scrap_house/presentation/authetication/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goTOpage(context);
    Timer(const Duration(seconds: 3), () {
      reload();
    });
    super.initState();
  }

  bool isFirst = false;

  reload() {
    setState(() {
      isFirst = !isFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // make best animation for splash screen
        // comment openion
        // shall we use  lottie or gif for splash screen?

        child: AnimatedCrossFade(
          sizeCurve: Curves.elasticIn,
          firstChild: Container(
            alignment: Alignment.center,
            child: const Text(
              "Flutter App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          secondChild: Container(
            alignment: Alignment.center,
            child: const Text(
              'Welcome To Our Flutter App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          crossFadeState:
              isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }

  //Which one is the good practice

  //no :1

  void goTOpage(BuildContext context) {
    Future.delayed(const Duration(seconds: 6)).then(
      (_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }

  //no :2

  // Future<void> goTOpage() async {
  //   await Future.delayed(
  //     const Duration(
  //       seconds: 6,
  //     ),
  //   );
  //   runApp(
  //     const MaterialApp(
  //       home: LoginScreen(),
  //     ),
  //   );
  // }
}
