
import 'package:flutter/material.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Demo'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),

      body: Stack(

        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(width: 400, height: 400, color: Colors.red,),
          Container(width: 300, height: 300, color: Colors.green,),
          Container(width: 200, height: 200, color: Colors.blue,
            alignment: Alignment.center,
            child: Text('Blue'),
          ),
          Opacity(
              opacity: 0.5,
              child: Container(width: 100, height: 100, color: Colors.amber,)),

          Positioned(
              left: 175,
              bottom: -25,

              child: Container(width: 50, height: 50,color: Colors.brown,)),
        ],
      ),
    );
  }
}
