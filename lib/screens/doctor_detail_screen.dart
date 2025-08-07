
import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetailScreen extends StatelessWidget {

  final Doctor daku;
  const DoctorDetailScreen({super.key, required this.daku});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
      ),
      body: Column(
        children: [
          Image.asset(daku.photo),
          Text(daku.name),
          Text(daku.fee.toString()),
          Text(daku.spe),
        ],
      ),
    );
  }
}
