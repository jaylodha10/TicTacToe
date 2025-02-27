import 'package:flutter/material.dart';
import 'package:tic_tac_toe_multi/responsive/responsive.dart';
import 'package:tic_tac_toe_multi/widgets/custom_textfield.dart';
import 'package:tic_tac_toe_multi/widgets/custumbutton.dart';

import '../widgets/custom_text.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
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
                text: 'Create Room',
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
