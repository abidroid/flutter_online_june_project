import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/widgets/rangeen_button.dart';

class RowAndColumnDemoScreen extends StatelessWidget {
  const RowAndColumnDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
       spacing: 2,

        children: [
          RangeenButton(
            width: 300,
            title: 'LOGIN',
            rangeenButtonTap: () {
              print('User will be logged in');
            },
          ),

          Expanded(child: Container(color: Colors.green)),

          Expanded(child: Container(color: Colors.red)),

          RangeenButton(
            title: 'REGISTER',
            rangeenButtonTap: () {
              print('REGISTER clicked');
            },
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            color: Colors.teal,
            child: Text('Banner Ad'),
          ),
        ],
      ),
    );
  }
}
