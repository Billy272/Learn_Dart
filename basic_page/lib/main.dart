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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Row(
            children: <Widget>[
              Text("Data"),
            ],
          ),
          Container(
              padding: const EdgeInsets.all(30),
              color: Colors.blue,
              child: const Text('I')),
          Container(
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.all(20),
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
