import 'package:flutter/material.dart';

void main() {
  runApp(const Rawyalty());
}

class Rawyalty extends StatelessWidget {
  const Rawyalty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rawyalty App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const ServicesScreen(),
    const DashBoardScreen(),
    const AboutScreen(),
    const AccountScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build_sharp),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speed),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rawyalty'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 13, 13, 13),
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      body: const Column(children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'Services Offered',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
            child: DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      labelColor: Color.fromARGB(255, 8, 173, 255),
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(25, 193, 164, 164),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                        color: Color.fromARGB(25, 193, 164, 164),
                      ),
                      tabs: <Widget>[
                        Tab(
                          text: 'Service 1',
                        ),
                        Tab(
                          text: 'Service 2',
                        ),
                        Tab(
                          text: 'Service 3',
                        ),
                        Tab(
                          text: 'Service 4',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          Center(
                            child: Text('Service 1'),
                          ),
                          Center(
                            child: Text('Service 2'),
                          ),
                          Center(
                            child: Text('Service 3'),
                          ),
                          Center(
                            child: Text('Service 4'),
                          ),
                        ],
                      ),
                    )
                  ],
                )))
      ]),
    );
  }
}

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Services Screen'),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard Screen'),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('About Screen'),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Account Screen'),
    );
  }
}
