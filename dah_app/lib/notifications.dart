import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

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
        title: const Text('Notifications'),
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
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notifications[index]['title']!),
            subtitle: Column(
              children: [
                Text(notifications[index]['message']!),
                const SizedBox(height: 10),
                Text(
                  'Time: ${notifications[index]['time']}',
                  style:
                      const TextStyle(color: Color.fromARGB(255, 7, 232, 176)),
                ),
              ],
            ),
            onTap: () {
              debugPrint(
                  'Notification tapped: ${notifications[index]['title']}');
            },
          );
        },
      ),
    );
  }
}
