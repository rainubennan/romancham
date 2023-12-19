import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ott/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 180),
            child: Center(
              child: Container(
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ),
          const Spacer(),
          const Center(
            child: Text(
              'Version 1.0',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
