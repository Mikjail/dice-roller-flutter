import 'package:flutter/material.dart';
import 'package:of_card_match/styled_text.dart';
import 'dart:math';

final _randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRoll = 1;

  void onPressed() {
    setState(() {
      currentRoll = _randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRoll.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
            ),
            child: const StyledText('Roll Dice')),
      ],
    );
  }
}
