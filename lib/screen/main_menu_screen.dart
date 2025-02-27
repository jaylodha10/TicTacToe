import 'package:flutter/material.dart';
import 'package:tic_tac_toe_multi/responsive/responsive.dart';
import 'package:tic_tac_toe_multi/screen/create_room_screen.dart';
import 'package:tic_tac_toe_multi/screen/join_room_screen.dart';
import 'package:tic_tac_toe_multi/widgets/custumbutton.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () => createRoom(context),
              text: 'Create Room',
            ),
            SizedBox(height: 20),
            CustomButton(
              onTap: () => joinRoom(context),
              text: 'Join Room',
            )
          ],
        ),
      ),
    );
  }
}
