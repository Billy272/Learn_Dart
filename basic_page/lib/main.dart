import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
          centerTitle: true,
        ),
        body: const Text('Hello World'),
      ),
    ));
