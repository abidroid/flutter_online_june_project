

import 'package:flutter/material.dart';

class DynamicListviewScreen extends StatelessWidget {
  const DynamicListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Hard coded
    var shoppingList = [
      "Milk",
      "Honey",
      "Bread",
      "Vegetable",
      "Fruit",
      "Laptop Bag",
      "Tea",
      "Green Tea",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic LV'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(

          itemCount: shoppingList.length,

          itemBuilder: ( BuildContext context, int index){

            return Card(
              color: Colors.amber[100],
              child: ListTile(
                leading: CircleAvatar(
                  child: Text( index.toString()),
                ),

                title: Text(shoppingList[index]),
              ),
            );
          }

      ),
    );
  }
}
