import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('First App'),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 5, 255, 218),
          ),
          // ignore: prefer_const_constructors
          body: Center(
            child: const Text('Hello World'),
          ),
          // ignore: prefer_const_constructors
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 5, 255, 218),
            // ignore: prefer_const_constructors
            child: Text('Click'),
          ),
        ),
      ),
    );
