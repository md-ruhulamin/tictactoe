// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tictactoe/widget/custom_button.dart';
import 'package:tictactoe/widget/customtext.dart';
import 'package:tictactoe/widget/customtextfield.dart';
import 'package:tictactoe/widget/responsive.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController _namecontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _namecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Create Room",
                fontsize: 65,
                shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
              ),
              SizedBox(
                height: size.height * .04,
              ),
              CustomtextField(controller: _namecontroller,hintext: 'Enter Your Name',),
       SizedBox(
                height: size.height * .04,
              ),
              CustomButton(text: "Create", onTap: (){})
            ],
          ),
        ),
      ),
    );
  }
}
