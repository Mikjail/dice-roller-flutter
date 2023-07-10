import 'package:flutter/material.dart';
import 'package:of_dice_roller/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Home(
          colors: [
            Colors.purpleAccent,
            Colors.purple,
          ],
        ),
      ),
    );
  }
}
