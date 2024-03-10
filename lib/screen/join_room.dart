import 'package:flutter/material.dart';
import 'package:tictactoe/widget/custom_button.dart';
import 'package:tictactoe/widget/customtext.dart';
import 'package:tictactoe/widget/customtextfield.dart';
import 'package:tictactoe/widget/responsive.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _gameIdcontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _namecontroller.dispose();
    _gameIdcontroller.dispose();
  }

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
                text: "Join Room",
                fontsize: 65,
                shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
              ),
              SizedBox(
                height: size.height * .04,
              ),
              CustomtextField(
                controller: _namecontroller,
                hintext: 'Enter Your Name',
              ),
              SizedBox(
                height: size.height * .03,
              ),
              CustomtextField(
                controller: _namecontroller,
                hintext: 'Game Id',
              ),
              SizedBox(
                height: size.height * .04,
              ),
              CustomButton(text: "Create", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
