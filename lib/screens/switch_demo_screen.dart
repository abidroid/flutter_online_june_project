
import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/widgets/rangeen_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({super.key});

  @override
  State<SwitchDemoScreen> createState() => _SwitchDemoScreenState();
}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {

  // state variable
  bool switchKaStatus = true;

  @override
  void initState() {
    readStoredValue();
    super.initState();
  }

  readStoredValue() async{
    final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

    switchKaStatus = await asyncPrefs.getBool('bijli') ?? false;

    setState(() {

    });
  }


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
                Switch(value: switchKaStatus,
                    onChanged: (bool isChecked) async {

                  // Save the bulb status in Shared Preferences

                      final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

                      switchKaStatus = isChecked;

                      await asyncPrefs.setBool('bijli', switchKaStatus);


                  setState(() {

                  });
                }),
              ],
            ),


            ElevatedButton(onPressed: (){

              Fluttertoast.showToast(msg: 'Bulb is ${switchKaStatus ? 'ON' : 'OFF'}',
              fontSize: 30,
                backgroundColor: Colors.red,
                gravity: ToastGravity.CENTER,
              );

            }, child: const Text("Show Message")),

            Card(

              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text('Wifi'),
                    Icon(Icons.wifi),
                    Spacer(),
                    Switch(value: true, onChanged: (isChecked){},)

                  ],
                ),
              ),
            ),

            RangeenButton(title: 'Demo', rangeenButtonTap: (){}),
          ],
        ),
      ),
    );
  }
}
