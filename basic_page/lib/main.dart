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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text("My App"),
          FloatingActionButton(
            onPressed: () {},
            child: const Text('Click Me'),
          ),
          Container(
            color: const Color.fromARGB(255, 2, 255, 213),
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(30),
            child: const Text('App Container'),
          )
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
