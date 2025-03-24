// import 'package:first_app/decoration.dart';
// import 'package:first_app/scrolling_demo_screen.dart';
// import 'package:first_app/homework.dart';
// import 'package:first_app/signup_screen.dart';
// import 'package:first_app/signup_screen.dart';
import 'package:first_app/home.dart';
// import 'package:first_app/splash_screen.dart';
import 'package:flutter/material.dart';

// import 'package:first_app/stack_demo_screen.dart';

// import 'drawer_demo_screen.dart';
// import 'package:first_app/task.dart';

// import 'textfield_demo_screen.dart';
// import 'package:first_app/second_screen.dart';
// import 'package:first_app/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
