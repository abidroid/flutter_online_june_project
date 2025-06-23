import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/screens/cross_axis_demo_screen.dart';
import 'package:flutter_online_june_project/screens/first_screen.dart';
import 'package:flutter_online_june_project/screens/images_demo_screen.dart';
import 'package:flutter_online_june_project/screens/row_and_column_demo_screen.dart';
import 'package:flutter_online_june_project/screens/stack_demo_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ImagesDemoScreen() // Launcher screen
    );
  }
}
