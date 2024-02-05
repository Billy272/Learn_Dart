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
      backgroundColor: const Color.fromARGB(255, 4, 158, 235),
      appBar: AppBar(
        title: const Text('Dah Great App'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 251, 255),
        elevation: 0.0,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: <Widget>[
            Text('COMPANY:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('The Dah Great Company',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 170, 255, 1))),
          ],
        ),
      ),
    );
  }
}
