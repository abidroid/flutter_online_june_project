
import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/screens/buttons_demo_screen.dart';
import 'package:flutter_online_june_project/screens/color_change_demo_screen.dart';
import 'package:flutter_online_june_project/screens/name_concat_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return NameConcatScreen();
            }));

          }, child: const Text('Concate Screen')),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return ButtonsDemoScreen();
            }));

          }, child: const Text('Button Demo Screen')),
          ElevatedButton(onPressed: (){

            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
              return ColorChangeDemoScreen();
            }));
          }, child: const Text('Color Change Screen')),
          ElevatedButton(onPressed: (){}, child: const Text('Doctor List Screen')),
        ],
      ),
    );
  }
}
