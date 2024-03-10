import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  CustomButton({super.key,required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
    
      decoration:const BoxDecoration(

        boxShadow: [BoxShadow(blurRadius: 1,color: Colors.blue,spreadRadius: 0)]
      ),
      child: ElevatedButton(
          onPressed: onTap,
          child:Text( text,style: TextStyle(fontSize: 22),),
          style: ElevatedButton.styleFrom(minimumSize: Size(width, 50))),
    );
  }
}
