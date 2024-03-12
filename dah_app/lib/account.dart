import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late User? _user;
  late String _userName;
  late String _email;
  late String _phoneNumber;
  late String _address;
  late String _profileImage;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    _user = FirebaseAuth.instance.currentUser;
    if (_user != null) {
      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(_user!.uid)
          .get();
      setState(() {
        _userName = userData['name'];
        _email = userData['email'];
        _phoneNumber = userData['phone'];
        _address = userData['address'];
        _profileImage = userData['profileImage'];
      });
    }
  }

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
              backgroundImage: NetworkImage(widget.profileImage),
            ),
            const SizedBox(height: 20),
            Text(
              'Name: ${widget.userName}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: ${widget.email}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: ${widget.phoneNumber}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Address: ${widget.address}',
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
