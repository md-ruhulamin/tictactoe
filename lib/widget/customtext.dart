import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final List<Shadow> shadows;

  const CustomText({super.key, required this.text, required this.fontsize, required this.shadows});

  @override
  Widget build(BuildContext context) {
    return Text(

      text,style: TextStyle(color: Colors.white,fontSize: fontsize,fontWeight: FontWeight.bold,shadows: shadows),
    );
  }
}
