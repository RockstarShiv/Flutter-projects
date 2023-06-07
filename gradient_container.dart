import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

// var startAlignment = Alignment.topLeft;
const startAlignment =
    Alignment.topLeft; //Alignment? may be used instead of var
const endAlignment = Alignment
    .bottomRight; //const is compile time constant means if we call a function during compilation then it can't be used

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key}); //: super(key:key);

  final List<Color> colors;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
