import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class PaslonRoller extends StatefulWidget {
  const PaslonRoller({super.key});
  @override
  State<PaslonRoller> createState() {
    return _PaslonRollerState();
  }
}

class _PaslonRollerState extends State<PaslonRoller> {
  var currentRoll = 0;
  var activeButton = 'assets/images/Paslon-0.jpg';
  var textSe = "Roll Paslon";
  void rollPaslon() {
    var rollGambar = randomizer.nextInt(3) + 1;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text(
          'Berikut adalah Prediksi Pemenang Pilpres menggunakan Randomizer',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: const Text('Okay'),
          ),
        ],
      ),
    );
    setState(() {
      currentRoll = rollGambar;
      textSe = 'Roll Paslon';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Prediksi Pemenang Pemilu 2024',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/Paslon-0$currentRoll.jpg',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollPaslon,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: Text(
            textSe,
          ),
        ),
      ],
    );
  }
}
