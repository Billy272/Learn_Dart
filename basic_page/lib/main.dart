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
        backgroundColor: const Color.fromARGB(255, 5, 255, 218),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: const Image(
          image: AssetImage('assets/future_city.jpg'),
        ),
      ),
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 5, 255, 218),
        // ignore: prefer_const_constructors
        child: Text('Click'),
      ),
    );
  }
}
