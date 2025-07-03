import 'package:flutter/material.dart';

import '../data_store/data_store.dart';

class DynamicGridviewScreen extends StatelessWidget {
  const DynamicGridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic GV'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,

        ),
        itemCount: doctors.length,
        itemBuilder: ( BuildContext context, int index){
          return Card(color: Colors.lightBlue[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(doctors[index].photo, width: 80, height: 80,)),
              Text(doctors[index].name),
              Text(doctors[index].spe),
              Text("${doctors[index].fee}"),

            ],
          ),
          );
        },
      ),
    );
  }
}
