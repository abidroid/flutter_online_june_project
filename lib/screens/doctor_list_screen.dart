
import 'package:flutter/material.dart';
import 'package:flutter_online_june_project/screens/doctor_detail_screen.dart';
import 'package:flutter_online_june_project/widgets/doctor_card.dart';
import '../data_store/data_store.dart';
import '../models/doctor.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors List'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (BuildContext context, int index){

              Doctor doctor = doctors[index];
              // Custom widget
              return InkWell(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return DoctorDetailScreen(daku: doctor);
                    }));
                  },
                  child: DoctorCard(doctor: doctor, color: colorList[index]));
            }),
      ),
    );
  }
}
