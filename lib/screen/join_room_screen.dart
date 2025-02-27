import 'package:flutter/material.dart';
import 'package:tic_tac_toe_multi/responsive/responsive.dart';
import 'package:tic_tac_toe_multi/widgets/custom_text.dart';
import 'package:tic_tac_toe_multi/widgets/custom_textfield.dart';
import 'package:tic_tac_toe_multi/widgets/custumbutton.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';

  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: 'Join Room',
                fontSize: 70,
                shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextfield(
                controller: _nameController,
                hintText: 'Enter your nickname',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextfield(
                controller: _gameIdController,
                hintText: 'Enter Game ID',
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              CustomButton(
                onTap: () {},
                text: 'Create',
              )
            ],
          ),
        ),
      ),
    );
  }
}
