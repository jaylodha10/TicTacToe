import 'package:flutter/material.dart';
import 'package:tic_tac_toe_multi/screen/create_room_screen.dart';
import 'package:tic_tac_toe_multi/screen/join_room_screen.dart';
import 'package:tic_tac_toe_multi/screen/main_menu_screen.dart';
import 'package:tic_tac_toe_multi/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {               
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
      },
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgcolor),
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
