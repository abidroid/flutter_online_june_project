import 'package:flutter/material.dart';

class ContainerDemoScreen extends StatelessWidget {
  const ContainerDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Demo'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 20,
        shadowColor: Colors.orange[500],
      ),

      // <div>
      body: Center(
        child: Container(
          // margin - wo container k outside hoga
          //margin: EdgeInsets.only(left: 20, top: 40),
          // padding - wo container k inside hoga
          //padding: EdgeInsets.only(left: 20, top: 100),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),

            // Assignment - RadialGradient
            // shadow
            // border
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.orange],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          child: Text('Flutter', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
