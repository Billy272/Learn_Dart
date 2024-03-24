import 'package:flutter/material.dart';
import 'user_details.dart';

class IntroductionScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  final List<String> _introPages = [
    'Welcome to the Auto-Motive App',
    'This app is designed to help you keep track of your vehicle\'s maintenance schedule',
    'Page 3',
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
    );
  }
}
