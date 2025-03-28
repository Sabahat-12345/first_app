
import 'package:first_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            ontap: () {
              debugPrint("This is profile Button");
            },
            title: "Profile Button",
            backgroundColor: Colors.amber)
      ],
    );
  }
}
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Profile picture
//             const CircleAvatar(
//               radius: 50,
//               backgroundImage:
//                   AssetImage("assets/my pic.jpg"), // Add your image path
//             ),
//             const SizedBox(height: 16),
//             // User name
//             const Text(
//               "John Doe",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             // Email
//             const Text(
//               "saba@example.com",
//               style: TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 20),
//             // Profile options
//             Expanded(
//               child: ListView(
//                 children: [
//                   // Settings option
//                   Card(
//                     child: ListTile(
//                       leading:
//                           const Icon(Icons.settings, color: Colors.blueAccent),
//                       title: const Text("Settings"),
//                       trailing: const Icon(Icons.arrow_forward_ios),
//                       onTap: () {},
//                     ),
//                   ),
//                   // My Orders option
//                   Card(
//                     child: ListTile(
//                       leading:
//                           const Icon(Icons.shopping_bag, color: Colors.green),
//                       title: const Text("My Orders"),
//                       trailing: const Icon(Icons.arrow_forward_ios),
//                       onTap: () {},
//                     ),
//                   ),
//                   // Wishlist option
//                   Card(
//                     child: ListTile(
//                       leading: const Icon(Icons.favorite, color: Colors.red),
//                       title: const Text("Wishlist"),
//                       trailing: const Icon(Icons.arrow_forward_ios),
//                       onTap: () {},
//                     ),
//                   ),
//                   // Logout option
//                   Card(
//                     child: ListTile(
//                       leading: const Icon(Icons.logout, color: Colors.black),
//                       title: const Text("Logout"),
//                       trailing: const Icon(Icons.arrow_forward_ios),
//                       onTap: () {},
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
