// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter101/paslon_roller.dart';
// import 'package:flutter101/gradient.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Kontainer extends StatelessWidget {
  const Kontainer({super.key, required this.colors});
  //initialization work
  //GG Gaming Gak Ham
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: PaslonRoller(),
      ),
    );
  }
}
