
import 'package:flutter/material.dart';

class CrossAxisDemoScreen extends StatelessWidget {
  const CrossAxisDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross Axis Demo"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),

      body: Container(
        height: 350,
        width: double.infinity,
        color: Colors.amber,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          // Column ka Cross Axis - Horizontal
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 80, height: 80, color: Colors.red,),
            Container(width: 80, height: 80, color: Colors.green,),
            Container(width: 80, height: 80, color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}

/*
  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Row ka Cross Axis - Vertical
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 80, height: 80, color: Colors.red,),
            Container(width: 80, height: 80, color: Colors.green,),
            Container(width: 80, height: 80, color: Colors.blue,),
          ],
        ),

 */
