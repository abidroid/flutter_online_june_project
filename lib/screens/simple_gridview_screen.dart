import 'package:flutter/material.dart';

class SimpleGridviewScreen extends StatelessWidget {
  const SimpleGridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [Icon(Icons.grid_4x4), Text('GridView Demo')],
        ),

        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),

      body: GridView(
       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent: 120,
        crossAxisSpacing: 10,
         mainAxisSpacing: 10,
         mainAxisExtent: 200,
       ),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
        FlutterLogo(),
        Container(color: Colors.pink),
        Container(color: Colors.cyan),
        Container(color: Colors.purple),
        Container(color: Colors.brown),
        Container(color: Colors.teal),
        CircleAvatar(),
        Container(color: Colors.amber),
        Container(color: Colors.deepOrange),
        Container(color: Colors.lightBlue),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.blue),
        FlutterLogo(),
        Container(color: Colors.pink),
        Container(color: Colors.cyan),
        Container(color: Colors.purple),
        Container(color: Colors.brown),
        Container(color: Colors.teal),
        CircleAvatar(),
        Container(color: Colors.amber),
        Container(color: Colors.deepOrange),
        Container(color: Colors.lightBlue),
      ],

      ),
    );
  }
}
