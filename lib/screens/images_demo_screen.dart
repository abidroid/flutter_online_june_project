

import 'package:flutter/material.dart';

class ImagesDemoScreen extends StatelessWidget {
  const ImagesDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: [

            Icon(Icons.settings, size: 50, color: Colors.red),
            Icon(Icons.shopping_cart, size: 50, color: Colors.red),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.orange,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
              child: Text('Abid', style: TextStyle( color: Colors.white)),
            ),

            Image(
              image: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
              width: 200,
              height: 200,
            ),
        
            Image.network('https://avatars.githubusercontent.com/u/17814795?v=4',
            width: 300,
            ),
        
            Image(
              image: AssetImage('images/abid.png',),
              width: 200,
            ),

            Image.asset('images/abid.png'),
          ]
        ),
      )
    );
  }
}
