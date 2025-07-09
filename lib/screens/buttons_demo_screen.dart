import 'package:flutter/material.dart';

import '../widgets/rangeen_button.dart';

class ButtonsDemoScreen extends StatelessWidget {
  const ButtonsDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Demo'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        spacing: 20,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),

            onPressed: () {
              print('Clicked ********');
            },
            child: const Text('LOGIN'),
          ),

          TextButton(
            onPressed: () {
              // Navigate to Sign up screen
            },
            child: const Text('Not Registered yet? SIGN UP'),
          ),

          OutlinedButton(
            onPressed: () {},
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [const Text('Rate Us'), Icon(Icons.star_rate_outlined)],
            ),
          ),

          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Share'),
            icon: Icon(Icons.share),
          ),

          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),

          // Re-usable Custom Widget

          RangeenButton(title: 'SIGN UP', rangeenButtonTap: (){}),
          RangeenButton(title: 'Test', rangeenButtonTap: (){}, width: 100,),
          // RangeenButton(),

        ],
      ),
    );
  }
}

