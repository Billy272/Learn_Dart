import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'car_data.dart';
import 'package:logger/logger.dart';

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
        routes: {
          '/account': (context) => const AccountScreen(),
          '/reports': (context) => const ReportScreen(),
          '/dashboard': (context) => DashBoardScreen(),
          '/faults': (context) => const FaultScreen(),
          '/my_cars': (context) => const MyCarScreen(),
          '/my_location': (context) => const MyLocationScreen(),
        });
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
    DashBoardScreen(),
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
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rawyalty',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 25,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 100,
        actions: <Widget>[
          IconButton(
            color: Colors.blue,
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'assets/connected.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: kToolbarHeight), // Padding for app bar
                const Text(
                  'Hello Billy!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: const [
                      ServiceBox(
                        icon: Icons.account_circle,
                        title: 'Account',
                        route: '/account',
                      ),
                      ServiceBox(
                        icon: Icons.car_repair,
                        title: 'Report',
                        route: '/reports',
                      ),
                      ServiceBox(
                        icon: Icons.speed,
                        title: 'Dashboard',
                        route: '/dashboard',
                      ),
                      ServiceBox(
                        icon: Icons.warning_sharp,
                        title: 'Faults',
                        route: '/faults',
                      ),
                      ServiceBox(
                        icon: Icons.directions_car,
                        title: 'My Cars',
                        route: '/my_cars',
                      ),
                      ServiceBox(
                        icon: Icons.location_on,
                        title: 'My Location',
                        route: '/my_location',
                      ),
                    ],
                  ),
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
  final String route;

  const ServiceBox({
    super.key,
    required this.icon,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the specified route
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollDown extends StatefulWidget {
  const ScrollDown({super.key});

  @override
  State<ScrollDown> createState() => _ScrollDownState();
}

class _ScrollDownState extends State<ScrollDown> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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
  DashBoardScreen({super.key});

  final CarData carData = CarData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Image.asset('assets/car.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
          // Speedometer gauge
          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.2),
                border: Border.all(color: Colors.white, width: 10),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/svg/speedometer_arc.svg',
                        width: 200),
                  ),
                  Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()
                      ..rotateZ(carData.speed * 3.14 / 180),
                    child: SvgPicture.asset(
                        'assets/svg/speedometer_needle.svg'), // Adjust width if needed
                  ),
                  const Center(
                    child: Text(
                      '180', // Replace with actual speed value (for reference)
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 30,
            child: SvgPicture.asset(
              'assets/svg/fuel_gauge.svg',
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String _username = 'Billy';
  String _password = '12345678';
  String _email = 'example@gmail.com';
  String _phone = '1234567890';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Account'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/future_city.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Username: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                initialValue: _username,
                decoration: const InputDecoration(
                    hintText: 'Enter your username',
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Password: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                initialValue: _password,
                decoration: const InputDecoration(
                  hintText: 'Enter password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Email: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                initialValue: _email,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Phone: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                initialValue: _phone,
                decoration: const InputDecoration(
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _phone = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final logger = Logger();

                  logger.d('Username: $_username');
                  logger.d('Password: $_password');
                  logger.d('Email: $_email');
                  logger.d('Phone: $_phone');
                },
                child: const Text('Save'),
              )
            ])));
  }
}

class FaultScreen extends StatelessWidget {
  const FaultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faults'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.notifications),
            onPressed: () {
              //do something
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Faults Screen'),
      ),
    );
  }
}

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Report Screen'),
    );
  }
}

class MyCarScreen extends StatelessWidget {
  const MyCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('My Cars Screen'),
    );
  }
}

class MyLocationScreen extends StatelessWidget {
  const MyLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('My Location Screen'),
    );
  }
}

class Notification extends StatelessWidget {
  Notification({super.key});

  final List<Map<String, String>> notifications = [
    {
      'title': 'Service Reminder',
      'message': 'Your car is due for service',
      'time': '10:00 AM',
    },
    {
      'title': 'Speed Alert',
      'message': 'You have exceeded the speed limit',
      'time': '11:00 AM',
    },
    {
      'title': 'Fuel Alert',
      'message': 'Fuel level is low',
      'time': '12:00 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 20,
        ),
      ),
      // body: ListView.builder(
      //   itemCount: notifications.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(notifications[index]['title']!),
      //       subtitle: Column(
      //         children: [
      //           Text(notifications[index]['message']!),
      //           const SizedBox(height: 10),
      //           Text(
      //             'Time: ${notifications[index]['time']}',
      //             style:
      //                 const TextStyle(color: Color.fromARGB(255, 7, 232, 176)),
      //           ),
      //         ],
      //       ),
      //       onTap: () {
      //         print('Notification tapped: ${notifications[index]['title']}');
      //       },
      //     );
      //   },
      // ),
    );
  }
}
