import 'package:first_app/heart.dart';
import 'package:first_app/home_screen.dart';
import 'package:first_app/person.dart';
import 'package:first_app/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 0;
  List mylist = [
    HomeScreen(),
    NotificationScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            myIndex = value;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: 'heart_broken',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: mylist[myIndex],
        ),
      ),
    );
  }
}
