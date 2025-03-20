import 'package:flutter/material.dart';

void main() {
  runApp(const BulbApp());
}

class BulbApp extends StatelessWidget {
  const BulbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BulbScreen(),
    );
  }
}

class BulbScreen extends StatefulWidget {
  @override
  State<BulbScreen> createState() => _BulbScreenState();
}

class _BulbScreenState extends State<BulbScreen> {
  bool isBulbOn = false;

  void toggleBulb() {
    setState(() {
      isBulbOn = !isBulbOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 57, 57),
      // AppBar को यहाँ से हटा दिया गया है
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: isBulbOn
                        ? Colors.yellow.withOpacity(0.5)
                        : const Color.fromARGB(0, 98, 96, 96),
                    spreadRadius: 20,
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Icon(
                Icons.lightbulb,
                size: 150,
                color: isBulbOn ? Colors.yellow : Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: toggleBulb,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 75, 74, 74),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                isBulbOn ? 'TURN OFF' : 'TURN ON',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
