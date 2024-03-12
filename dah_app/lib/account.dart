import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final String userName;
  final String email;
  final String phoneNumber;
  final String address;
  final String profileImage;

  const AccountScreen({
    super.key,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profileImage),
            ),
            const SizedBox(height: 20),
            Text(
              'Name: $userName',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: $email',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: $phoneNumber',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Address: $address',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //sign out
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
