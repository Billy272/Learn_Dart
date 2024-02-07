import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // ignore: prefer_const_constructors
    home: Dahapp(),
  ));
}

class Dahapp extends StatefulWidget {
  const Dahapp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DahappState createState() => _DahappState();
}

class _DahappState extends State<Dahapp> {
  int population = 1000000;

  void _incPopulation() {
    setState(() {
      population += 12000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 158, 235),
      appBar: AppBar(
        title: const Text('Dah Great City'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 251, 255),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incPopulation,
        backgroundColor: const Color.fromARGB(255, 226, 255, 5),
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/future_city.jpg'),
                radius: 100,
              ),
            ),
            Divider(
              height: 80,
              color: Colors.yellowAccent,
            ),
            Text('CITY:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 10),
            Text('The Dah Great City',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 170, 255, 1))),
            SizedBox(height: 30),
            Text('Year Founded:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 10),
            Text('2024',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 170, 255, 1))),
            SizedBox(height: 30),
            Text('Population Size:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 10),
            Text('$population',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 170, 255, 1))),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(width: 10),
                Text('info@dahgreatcity.co.ke',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 174, 255, 1))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
