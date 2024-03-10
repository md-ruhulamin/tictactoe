// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tictactoe/screen/create_room.dart';
import 'package:tictactoe/screen/join_room.dart';
import 'package:tictactoe/screen/mainmenuscreen.dart';
import 'package:tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: bgColor,
      ),
      routes:{
MainMenuScreen.routeName:(context) => MainMenuScreen(),
JoinRoomScreen.routeName:(context) => JoinRoomScreen(),
 CreateRoom.routeName:(context) => CreateRoom(),


      },
     initialRoute: MainMenuScreen.routeName,
    );
  }
}

 