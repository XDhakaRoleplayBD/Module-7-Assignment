import 'package:flutter/material.dart';
import 'package:new_project/home_screen.dart';
import 'package:new_project/module6_2.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lol",
      home: HomeScreen(),
      // home: Module6_2(),
    );
  }
}
