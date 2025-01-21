import 'package:flutter/material.dart';
import 'package:rebuy/Drawer/liked_items.dart';
import 'package:rebuy/Pages/listed_items.dart';
import 'package:rebuy/Drawer/order_items.dart';
import 'package:rebuy/Pages/explore.dart';
import 'package:rebuy/Pages/home.dart';
import 'package:rebuy/Pages/message.dart';

class FloatingNavBar extends StatefulWidget {
  @override
  _FloatingNavBarState createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const ExplorePage(),
    const LikedItems(),
    const MessagePage(),
    const ListedItems(),
    const OrderedPage(),
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
          _pages[_selectedIndex],
          Positioned(
            bottom: 10,
            left: 16,
            right: 16,
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
