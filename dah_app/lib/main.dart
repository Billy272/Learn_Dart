import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Dahapp(),
  ));
}

class Dahapp extends StatelessWidget {
  const Dahapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dah Great App'),
      ),
    );
  }
}
