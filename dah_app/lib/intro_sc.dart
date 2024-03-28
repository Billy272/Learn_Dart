import 'package:flutter/material.dart';
import 'user_details.dart';
import 'sign_in.dart';

class IntroductionScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  final List<String> _introPages = [
    'RAWYALTY',
    'Welcome to the best Auto-Motive App',
    'This app is designed to help you keep track of your vehicle\'s maintenance schedule and real-time problems.',
    'Let\'s get started by entering your details.',
  ];

  IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: _introPages.length,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              _introPages[index],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_pageController.page == _introPages.length - 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserDetailsScreen(),
              ),
            );
          } else {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserDetailsScreen(),
                  ),
                );
              },
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
