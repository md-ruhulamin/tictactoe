// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tictactoe/screen/create_room.dart';
import 'package:tictactoe/screen/join_room.dart';
import 'package:tictactoe/widget/custom_button.dart';
import 'package:tictactoe/widget/responsive.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            text: "Create Room ",
            onTap: () => createRoom(context),
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: "Join Room ",
            onTap: () => joinRoom(context),
          ),
        ],
      ),
    ));
  }
}
