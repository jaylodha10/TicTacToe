import 'package:flutter/material.dart';

class Custumbutton extends StatelessWidget {
  final VoidCallback onTap;
  const Custumbutton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width / 5, 50),
      ),
      child: Text(
        'Play',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
