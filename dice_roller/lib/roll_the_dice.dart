import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dice_icons/dice_icons.dart';

var randomizer1 = Random();
var randomizer2 = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 6;
  var currentDiceRoll2 = 6;
  void rolldice() {
    setState(() {
      currentDiceRoll1 = randomizer1.nextInt(6) + 1;
      currentDiceRoll2 = randomizer2.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll1.png',
            width: 250,
            height: 250,
          ),
          Image.asset(
            'assets/images/dice-$currentDiceRoll2.png',
            width: 250,
            height: 250,
          ),
          const SizedBox(width: 50, height: 50),
          ElevatedButton.icon(
            onPressed: rolldice,
            label: const Text('ROLL THE DICE'),
            icon: const Icon(DiceIcons.dice3),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 127, 197, 207),
              padding: const EdgeInsets.all(24),
              textStyle: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
