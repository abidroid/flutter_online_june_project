

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

      body: SingleChildScrollView(
        child: Text("Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun Flutter is fun The End  ",

          style: TextStyle(
            color: Colors.purple,
            fontSize: 60,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.yellow,
          ),

        ),
      ),
    );
  }
}
