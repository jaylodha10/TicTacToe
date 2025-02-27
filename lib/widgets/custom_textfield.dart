import 'package:flutter/material.dart';
import 'package:tic_tac_toe_multi/utils/colors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextfield(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 5, spreadRadius: 2, color: Colors.blue),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: bgcolor,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
