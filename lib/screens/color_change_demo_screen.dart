
import 'dart:math';

import 'package:flutter/material.dart';

class ColorChangeDemoScreen extends StatefulWidget {
  const ColorChangeDemoScreen({super.key});

  @override
  State<ColorChangeDemoScreen> createState() => _ColorChangeDemoScreenState();
}

class _ColorChangeDemoScreenState extends State<ColorChangeDemoScreen> {

  // initial state
  Color bgColor = Colors.black;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Color Change'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: (){
            setState(() {
              bgColor = Colors.red;
            });
          }, child: const Text("RED")),
          ElevatedButton(onPressed: (){
            setState(() {
              bgColor = Colors.green;
            });
          }, child: const Text("GREEN")),
          ElevatedButton(onPressed: (){
            setState(() {
              bgColor = Colors.blue;
            });
          }, child: const Text("BLUE")),

          ElevatedButton(onPressed: (){

            setState(() {

              int red = random.nextInt(256);
              int green = random.nextInt(256);
              int blue = random.nextInt(256);

              // bgColor = Color.fromARGB(255, red, green, blue);

              bgColor = Color(0xff0000ff);
            });
          }, child: const Text("RANDOM COLOR")),
        ],
      ),
    );
  }
}
