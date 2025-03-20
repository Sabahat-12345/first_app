import 'package:flutter/material.dart';

void main() {
  runApp(BulbApp());
}

class BulbApp extends StatelessWidget {
  const BulbApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BulbScreen(),
    );
  }
}

class BulbScreen extends StatefulWidget {
  @override
  _BulbScreenState createState() => _BulbScreenState();
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
      appBar: AppBar(
        title: Text('Bulb On/Off'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb,
              size: 100,
              color: isBulbOn ? Colors.yellow : Colors.grey,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleBulb,
              child: Text(isBulbOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}