import 'package:flutter/material.dart';
import 'package:rebuy/Components/buy_page.dart';
import 'package:rebuy/components/bottomnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FloatingNavBarExample(),
    );
  }
}
