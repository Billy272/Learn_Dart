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
    const FaultScreen(),
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
            icon: Icon(Icons.warning_sharp),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            label: 'Faults',
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
  final String _name;
  const HomeScreen({super.key, String name = 'Billy'})
      : _name = name,
        super();

  get name => _name;

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
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.notifications),
            onPressed: () {
              //do something
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Hello $name',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3, // Number of columns in the grid
              padding: const EdgeInsets.all(16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                // Box 1 my account
                ServiceBox(
                  icon: Icons.account_circle,
                  title: 'Account',
                  onTap: () {
                    // Navigate to Account screen
                  },
                ),

                // Box 2 reports
                ServiceBox(
                  icon: Icons.car_repair,
                  title: 'Report',
                  onTap: () {
                    // Navigate to Services screen
                  },
                ),

                // Box 3
                ServiceBox(
                  icon: Icons.speed,
                  title: 'Dashboard',
                  onTap: () {
                    // Navigate to Dashboard screen
                  },
                ),
                // Box 4
                ServiceBox(
                  icon: Icons.warning_sharp,
                  title: 'Faults',
                  onTap: () {
                    // Navigate to Faults screen
                  },
                ),
                // Box 5 my cars
                ServiceBox(
                  icon: Icons.directions_car,
                  title: 'My Cars',
                  onTap: () {
                    // Navigate to My Cars screen
                  },
                ),
                // Box 6 nearest service
                ServiceBox(
                  icon: Icons.location_on,
                  title: 'My Location',
                  onTap: () {
                    // Navigate to My Location screen
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ServiceBox({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
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

class FaultScreen extends StatelessWidget {
  const FaultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Faults Screen'),
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
