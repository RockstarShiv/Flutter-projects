import 'package:flutter/material.dart';


class StyleText extends StatelessWidget
{
  const StyleText(this.text,{super.key});//or String text ,:text=text

  final String text;

  @override
  Widget build(context)
  {
    return Text(text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              ),

            );
  }
}