

import 'package:flutter/material.dart';

class DynamicListviewScreen extends StatelessWidget {
  const DynamicListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic LV'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(

          itemCount: 200000,

          itemBuilder: ( BuildContext context, int index){

            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text( index.toString()),
                ),

                title: Text('Item # $index'),
              ),
            );
          }

      ),
    );
  }
}
