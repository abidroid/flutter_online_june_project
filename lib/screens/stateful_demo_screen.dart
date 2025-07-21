

import 'dart:math';

import 'package:flutter/material.dart';

class StatefulDemoScreen extends StatefulWidget {
  const StatefulDemoScreen({super.key});

  @override
  State<StatefulDemoScreen> createState() => _StatefulDemoScreenState();
}

class _StatefulDemoScreenState extends State<StatefulDemoScreen> {

  // initial State
  // State variables
  String message = "Hello Peshawar";
  int randomNumber = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    print('build executed');
    print('******************************');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stf Demo'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text(message),
          OutlinedButton(onPressed: (){

            if( message == "Flutter is fun"){
              message = "Hello Peshawar";
            }else if( message == "Hello Peshawar"){
              message = "Flutter is fun";
            }else{
              message = "Flutter is fun";
            }


            setState(() {

            });
          }, child: const Text('Change')),

          OutlinedButton(onPressed: (){



            setState(() {
              randomNumber = random.nextInt(100);
              message = "$randomNumber";
            });

          }, child: const Text('Generate Number'))
        ],
      ),
    );
  }
}
