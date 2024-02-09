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

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15, 15, 16, 0),
      child: Column(children: <Widget>[
        Text(
          quote.text,
          style: const TextStyle(
              fontSize: 18, color: Color.fromARGB(255, 1, 85, 85)),
        ),
        Text(
          quote.author,
          style: const TextStyle(
              fontSize: 18, color: Color.fromARGB(255, 20, 85, 89)),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 249, 100),
      appBar: AppBar(
        title: const Text('Basic Page'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 238, 255),
      ),
      body: Column(
        children: quote.map((quotes) {
          return Text('${quotes.text} - ${quotes.author}');
        }).toList(),
      ),
    );
  }
}
