import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.outText, {super.key});
  //initialization work
  //GG Gaming Gak Ham

  final String outText;

  @override
  Widget build(BuildContext context) {
    return Text(
      outText,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.amber,
        fontSize: 28,
      ),
    );
  }
}
