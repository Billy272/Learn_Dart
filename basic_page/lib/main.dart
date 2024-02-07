import 'package:flutter/material.dart';
import 'quote.dart';

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
  List<Quote> quote = [
    Quote(
        text: 'Without music, life would be a mistake. ',
        author: 'Friedrich Nietzsche'),
    Quote(
        text: 'Always forgive your enemies; nothing annoys them so much. ',
        author: 'Oscar Wilde')
  ];

  List<String> author = [
    'Friedrich Nietzsche',
    'Oscar Wilde',
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
          return Text('${quotes.text} - ${quotes.author}');
        }).toList(),
      ),
    );
  }
}
