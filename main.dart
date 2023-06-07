import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 69, 241, 175),
        body: GradientContainer([Color.fromARGB(255, 247, 215, 3),Color.fromARGB(255, 247, 3, 3)]),
      ),
    ),
  ); //this runApp() can't be written simply outside without a fun body
  // function provide by flutter
}
