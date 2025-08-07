

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  final String incoming;

  const WelcomeScreen({super.key, required this.incoming});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $incoming'),
      ),
    );
  }
}
