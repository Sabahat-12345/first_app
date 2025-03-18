import 'package:flutter/material.dart';

class ScrollingDemoScreen extends StatelessWidget {
  const ScrollingDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrolling Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: 
                DecorationImage(image:AssetImage("assets/logo.png") )
              ),
             
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration:  BoxDecoration(
                image: 
                DecorationImage(image:AssetImage("assets/igp.jpg") )
              ),
            ),
            Container(
                       height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
