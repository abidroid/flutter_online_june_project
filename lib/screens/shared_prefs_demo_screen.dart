

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsDemoScreen extends StatefulWidget {
  const SharedPrefsDemoScreen({super.key});

  @override
  State<SharedPrefsDemoScreen> createState() => _SharedPrefsDemoScreenState();
}

class _SharedPrefsDemoScreenState extends State<SharedPrefsDemoScreen> {

  // initial state
  int count = 50;


  // one time
  @override
  void initState() {
    readStoredValue();
    super.initState();
  }

  // ye aik dafa execute hoga - first time

  // Read from Shared Prefs
  readStoredValue() async {
    final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();
    count = await asyncPrefs.getInt('shmera') ?? 0;
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Persistence'),
      backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        // Save count value in Shared preferences
        final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();
        count++;

        asyncPrefs.setInt('shmera', count);
        setState(() {

        });
      },
      child: Icon(Icons.add),

      ),
      body: Center(
        child: Text(count.toString(), style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
