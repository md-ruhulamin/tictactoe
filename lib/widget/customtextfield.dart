import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomtextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  const CustomtextField({super.key, required this.controller, required this.hintext});

  @override
  Widget build(BuildContext context) {
    return Container(
decoration: BoxDecoration(
  boxShadow: [
    BoxShadow(color: Colors.blue,blurRadius: 5,spreadRadius: 2)
  ]
),

      child: TextField(controller:controller ,
      
      decoration: InputDecoration(
        fillColor: bgColor,
        filled: true,
        hintText: hintext
      ),
      ),


    );
  }
}