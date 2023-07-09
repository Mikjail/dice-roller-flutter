import 'package:flutter/material.dart';

import 'package:of_card_match/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
