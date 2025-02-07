import 'package:flutter/material.dart';
import 'package:tic_tac_toe_multi/home.dart';
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
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgcolor),
      home: Home(),
    );
  }
}
