import 'package:flutter/material.dart';

import 'package:first_app/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashNav();
    super.initState();
  }

  splashNav() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SingupScreen()),
          (route) =>false);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/my pic.jpg"),
      ),
    );
  }
}
