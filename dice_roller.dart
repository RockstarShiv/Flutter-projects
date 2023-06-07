import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

var randomizer = Random();
class _DiceRollerState extends State<DiceRoller>{
  var activeDiceimage = 'assets/images/dice-1.png';

  rollDice() {
    var random=randomizer.nextInt(6)+1;
    setState(() {
      activeDiceimage = 'assets/images/dice-$random.png';
    });
    
  }

  @override
 Widget build(context)
 {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceimage, width: 200),
            const SizedBox(height: 10), //take space bw children
            OutlinedButton(
              onPressed: rollDice,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 251, 113, 39),
                  // padding: const EdgeInsets.only(top:10,bottom:10,left:25,right:25),
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text('Roll dice'),
            ),
          ],
        );
 }
}