import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  // Define a class-level variable to hold user details
  final Map<String, String> userDetails;

  // Constructor to initialize user details
  const AccountScreen({Key? key, required this.userDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract user details from the provided map
    String _username = userDetails['username'] ?? '';
    String _email = userDetails['email'] ?? '';
    String _phone = userDetails['phone'] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Username: $_username',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Email: $_email',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Phone: $_phone',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
