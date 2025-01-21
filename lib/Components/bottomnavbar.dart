import 'package:flutter/material.dart';
import 'package:rebuy/Drawer/listing.dart';
import 'package:rebuy/Pages/explore.dart';
import 'package:rebuy/Pages/home.dart';
import 'package:rebuy/Pages/liked_items.dart';
import 'package:rebuy/Pages/message.dart';

class FloatingNavBarExample extends StatefulWidget {
  @override
  _FloatingNavBarExampleState createState() => _FloatingNavBarExampleState();
}

class _FloatingNavBarExampleState extends State<FloatingNavBarExample> {
  int _selectedIndex = 0;

  // Define the pages for navigation
  final List<Widget> _pages = [
    const HomeView(),
    const ExplorePage(),
    const LikedItems(),
    const MessagePage(),
    const ListedItems(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Display the selected page
          _pages[_selectedIndex],

          // Floating Navigation Bar
          Positioned(
            bottom: 10, // Adjust the distance from the bottom of the screen
            left: 16, // Adjust the distance from the left
            right: 16, // Adjust the distance from the right
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () => _onItemTapped(0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.explore,
                      color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () => _onItemTapped(1),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () => _onItemTapped(2),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.messenger_outline_sharp,
                      color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                      size: 30,
                    ),
                    onPressed: () => _onItemTapped(3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
