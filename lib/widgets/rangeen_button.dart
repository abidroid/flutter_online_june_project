import 'package:flutter/material.dart';

class RangeenButton extends StatelessWidget {

  final String title;
  final VoidCallback rangeenButtonTap;
  final double? width;

  // constructor
  const RangeenButton({
    super.key,
    required this.title,
    required this.rangeenButtonTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: rangeenButtonTap,
      child: Material(
        child: Container(
          width: width ?? 200,
          height: 40,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(colors: [Colors.purple, Colors.red])
          ),
          child: Center(child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18),)),
        ),
      ),
    );
  }
}
