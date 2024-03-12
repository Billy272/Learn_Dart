import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'car_data.dart';

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
