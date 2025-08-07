

import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/models/doctor.dart';
import 'package:gap/gap.dart';

class NameConcatScreen extends StatefulWidget {

  final String nama;
  const NameConcatScreen({super.key, required this.nama});

  @override
  State<NameConcatScreen> createState() => _NameConcatScreenState();
}

class _NameConcatScreenState extends State<NameConcatScreen> {

  // initial Value
  String fullName = "Fullnama";


  var firstC = TextEditingController();
  var lastC = TextEditingController();
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Name ${widget.nama}'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: firstC,
              focusNode: myFocusNode,
              decoration: InputDecoration(
                hintText: 'First name',
                border: OutlineInputBorder()
              ),
            ),
            Gap(20),
            TextField(
              controller: lastC,
              decoration: InputDecoration(
                hintText: 'Last name',
                border: OutlineInputBorder()
            ),),

            Gap(20),
            Row(
              spacing: 20,
              children: [
                ElevatedButton(onPressed: (){

                  firstC.clear();
                  lastC.clear();

                  setState(() {
                    fullName = '';
                  });

                  myFocusNode.requestFocus();

                }, child: const Text('Clear')),
                ElevatedButton(onPressed: (){
                  // combine logic
                  // 1. get text from first name tf
                    String firstName =  firstC.text;

                  // 2. get text from second name tf

                  String lastName = lastC.text;
                  // 3. concate

                  setState(() {
                    fullName = '$firstName $lastName';
                  });
                }, child: const Text('Combine')),
              ],
            ),
            Gap(20),

            Text(fullName),

            OutlinedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: const Text("Go Back")),
          ],
        ),
      ),
    );
  }
}
