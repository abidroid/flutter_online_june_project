
import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/models/doctor.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Hard Coded Data
    List<Doctor> doctors = [
      Doctor(name: 'Ali', spe: 'ENT', fee: 2000, photo: 'images/abid.png'),
      Doctor(name: 'Hina', spe: 'Cardiologist', fee: 3000, photo: 'images/abid.png'),
      Doctor(name: 'Zia', spe: 'Gastro', fee: 2500, photo: 'images/abid.png'),
      Doctor(name: 'Bilal', spe: 'General Physician', fee: 2000, photo: 'images/abid.png'),
      Doctor(name: 'Gia', spe: 'Physiotherapist', fee: 2000, photo: 'images/abid.png'),
      Doctor(name: 'Sana', spe: 'ENT', fee: 3000, photo: 'images/abid.png'),
      Doctor(name: 'Ali', spe: 'ENT', fee: 2000, photo: 'images/abid.png'),
      Doctor(name: 'Hina', spe: 'Cardiologist', fee: 3000, photo: 'images/abid.png'),
      Doctor(name: 'Zia', spe: 'Gastro', fee: 2500, photo: 'images/abid.png'),
      Doctor(name: 'Bilal', spe: 'General Physician', fee: 2000, photo: 'images/abid.png'),
      Doctor(name: 'Gia', spe: 'Physiotherapist', fee: 2000, photo: 'images/abid.png'),
      Doctor(name: 'Sana', spe: 'ENT', fee: 3000, photo: 'images/abid.png'),

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors List'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (BuildContext context, int index){
              return Card(

                color: Colors.cyan[100],

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 20,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.orange,
                        backgroundImage: AssetImage(doctors[index].photo),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(doctors[index].name, style: TextStyle(fontSize: 22),),
                          Text(doctors[index].spe),
                          Text(doctors[index].fee.toString()),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
