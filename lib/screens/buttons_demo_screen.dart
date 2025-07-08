import 'package:flutter/material.dart';

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
        
          InkWell(
            onTap: (){
              print('Custom Button Tapped');
            },
            child: Material(
              child: Container(
                width: 200,
                height: 40,
               
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [Colors.purple, Colors.orange])
                ),
                child: Center(child: Text('Delete App', style: TextStyle(color: Colors.white, fontSize: 18),)),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              print('Custom Button Tapped');
            },
            child: Material(
              child: Container(
                width: 200,
                height: 40,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(colors: [Colors.purple, Colors.orange])
                ),
                child: Center(child: Text('Visit Instagram', style: TextStyle(color: Colors.white, fontSize: 18),)),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              print('Custom Button Tapped');
            },
            child: Material(
              child: Container(
                width: 200,
                height: 40,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(colors: [Colors.purple, Colors.orange])
                ),
                child: Center(child: Text('Close Account', style: TextStyle(color: Colors.white, fontSize: 18),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
