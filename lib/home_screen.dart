import 'package:first_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomButton(
              title: "Button One",
              backgroundColor: Colors.black,
              ontap: () {
                debugPrint("button one pressed");
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              title: "Button Two",
              backgroundColor: Colors.green,
              ontap: () {
                debugPrint("button two pressed");
              },
            ),
          ],
        )
        // return SafeArea(
        //   child: Center(
        //     child: Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           const Text(
        //             "Welcome to My Home!",
        //             style: TextStyle(
        //               fontSize: 24,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.blueAccent,
        //             ),
        //           ),
        //           const SizedBox(height: 16),
        //           for (int i = 0; i < 4; i++)
        //             const Padding(
        //               padding: EdgeInsets.symmetric(vertical: 4.0),
        //               child: Text(
        //                 "This is my home",
        //                 style: TextStyle(fontSize: 18, color: Colors.black87),
        //               ),
        //             ),
        //           const SizedBox(height: 20),
        //           ElevatedButton(
        //             onPressed: () {},
        //             style: ElevatedButton.styleFrom(
        //               padding:
        //                   const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        //               backgroundColor: Colors.blueAccent,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //             child: const Text(
        //               "Explore More",
        //               style: TextStyle(fontSize: 18, color: Colors.white),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // );
        );
  }
}
