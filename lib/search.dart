import 'package:first_app/constant.dart';
import 'package:first_app/widgets/user_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              var user = dataList[index];
              return UserCard(
                email: user['email'],
                name: user['username'],
                profile: user['profile'],
                userIcon: Icons.arrow_forward_ios,
              );
            },
          ),
        ),
      ],
    );
  }
}
//  return Column(
//       children: [
//         UserCard(
//             email: "xyz@gmail.com",
//             name: "User1",
//             profile: dataList[0]['profile'],
//             userIcon: Icons.arrow_back),
//         UserCard(
//             email: "abc@gmail.com",
//             name: "User2",
//             profile: dataList[1]['profile'],
//             userIcon: Icons.arrow_forward_ios),
//       ],
//     );

// import 'package:flutter/material.dart';

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Notifications",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueAccent,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               for (int i = 0; i < 2; i++)
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 4.0),
//                   child: Text(
//                     "This is my notification",
//                     style: TextStyle(fontSize: 18, color: Colors.black87),
//                   ),
//                 ),
//               const SizedBox(height: 20),
//               ElevatedButton.icon(
//                 onPressed: () {},
//                 icon: const Icon(Icons.notifications, color: Colors.white),
//                 label: const Text(
//                   "View Notifications",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                   backgroundColor: Colors.blueAccent,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
