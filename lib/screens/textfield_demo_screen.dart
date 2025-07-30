
import 'package:flutter/material.dart';

class TextfieldDemoScreen extends StatefulWidget {
  const TextfieldDemoScreen({super.key});

  @override
  State<TextfieldDemoScreen> createState() => _TextfieldDemoScreenState();
}

class _TextfieldDemoScreenState extends State<TextfieldDemoScreen> {

  // initial state
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TF Demo'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(

              decoration: InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 11,

              decoration: InputDecoration(
                hintText: 'Mobile #',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.mobile_friendly),
                suffixIcon: Icon(Icons.coronavirus_rounded),
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    obscureText = !obscureText;
                  });
                }, icon: Icon( obscureText ?  Icons.visibility : Icons.visibility_off)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
