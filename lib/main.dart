import 'package:flutter/material.dart';
import 'package:flutter101/container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Prediksi Paslon",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: const Kontainer(
          colors: [
            Color.fromARGB(55, 16, 30, 214),
            Color.fromARGB(255, 101, 109, 145),
          ],
        ),
      ),
    );
  }
}
