import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Basic(),
    ));

class Basic extends StatefulWidget {
  const Basic({super.key});

  @override
  State<Basic> createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  List<String> quote = [
    'Without music, life would be a mistake.',
    'Always forgive your enemies; nothing annoys them so much.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Basic Page'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: quote.map((quotes) {
          return Text(quotes);
        }).toList(),
      ),
    );
  }
}
