

import 'package:flutter/material.dart';

import '../models/doctor.dart';

// Custom Widget
// Reusable

class DoctorCard extends StatelessWidget {

  final Doctor doctor;
  final Color color;

  const DoctorCard({super.key, required this.doctor, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(

      margin: const EdgeInsets.only(bottom: 12),
      //color: index % 2 == 0 ? Colors.cyan[100] : Colors.pink[100],
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          spacing: 20,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.orange,
              backgroundImage: AssetImage(doctor.photo),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctor.name, style: TextStyle(fontSize: 22),),
                Text(doctor.spe),
                Text(doctor.fee.toString()),
              ],
            ),

            Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}
