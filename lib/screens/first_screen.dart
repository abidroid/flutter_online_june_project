

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {

  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('June 2025'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: Text("Flutter is fun ",

        style: TextStyle(
          color: Colors.purple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          backgroundColor: Colors.yellow,
        ),

      ),
    );
  }
}
