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
        title: const Text('Dah Great City'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 251, 255),
        elevation: 0.0,
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
