import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: const Text(
        "Gacha Paslon",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
