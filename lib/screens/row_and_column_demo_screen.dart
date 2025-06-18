import 'package:flutter/material.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 2,

        children: [

          Expanded(child: Container(color: Colors.green)),

          Expanded(child: Container(color: Colors.red)),

          Container(
              alignment: Alignment.center,
              height: 50, color: Colors.teal, child: Text('Banner Ad')),
        ],
      ),
    );
  }
}
