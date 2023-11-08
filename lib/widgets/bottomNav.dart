import 'package:ajio_app/screens/account.dart';
import 'package:ajio_app/screens/categories.dart';
import 'package:ajio_app/screens/explore.dart';
import 'package:ajio_app/screens/home.dart';
import 'package:ajio_app/screens/trend.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentSelectedIndex = 0;

  final _screens = [
    HomeScreen(),
    ExploreScreen(),
    TrndinScreen(),
    CategoryScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        selectedItemColor: Colors.black, // For selected item color
        unselectedItemColor: Colors.black, // For unselected item color
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.store), label: 'Switch Stores'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'TRNDin'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}