
import 'package:flutter/material.dart';

class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({super.key});

  @override
  State<SwitchDemoScreen> createState() => _SwitchDemoScreenState();
}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {

  // state variable
  bool switchKaStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Demo"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Icon(Icons.lightbulb,
              size: 200,
              color: switchKaStatus ?  Colors.amber : Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bulb Status', style: TextStyle(fontSize: 20),),
                Switch(value: switchKaStatus, onChanged: (bool isChecked){

                  setState(() {
                    switchKaStatus = isChecked;
                  });
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
