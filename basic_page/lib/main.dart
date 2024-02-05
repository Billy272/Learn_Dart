import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      // ignore: prefer_const_constructors
      body: Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(30),
              color: Colors.blue,
              child: const Text('I')),
          Container(
              padding: const EdgeInsets.all(50),
              color: const Color.fromARGB(255, 216, 43, 214),
              child: const Text('Love')),
          Container(
              padding: const EdgeInsets.all(40),
              color: const Color.fromARGB(255, 223, 4, 4),
              child: const Text('You')),
        ],
      ),
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('Clicked');
        },
        backgroundColor: const Color.fromARGB(255, 5, 255, 218),
        // ignore: prefer_const_constructors
        child: Text('Click'),
      ),
    );
  }
}
