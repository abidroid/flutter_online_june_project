
import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/screens/buttons_demo_screen.dart';
import 'package:flutter_online_june_project/screens/color_change_demo_screen.dart';
import 'package:flutter_online_june_project/screens/doctor_list_screen.dart';
import 'package:flutter_online_june_project/screens/dynamic_gridview_screen.dart';
import 'package:flutter_online_june_project/screens/name_concat_screen.dart';
import 'package:flutter_online_june_project/screens/welcome_screen.dart';
import 'package:gap/gap.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  var tfC = TextEditingController();

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

            String noom = tfC.text;

            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return NameConcatScreen( nama: noom,);
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
          ElevatedButton(onPressed: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return DynamicGridviewScreen();
            }));
          }, child: const Text('Doctor List Screen')),
          ElevatedButton(onPressed: (){

            String name = tfC.text;


            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return WelcomeScreen( incoming: name );
            }));

          }, child: const Text('Go to Welcome Screen')),

          Gap(10),

          TextField(
            controller: tfC,
          )
        ],
      ),
    );
  }
}
