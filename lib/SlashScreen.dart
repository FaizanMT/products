import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToGetStarted();
  }

  void navigateToGetStarted() async {
    await Future.delayed(Duration(seconds: 10)); // Wait for 2 seconds
    Navigator.pushReplacementNamed(context, '/getStarted');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Wrap the Column with Center widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Transform.scale(
                scale: 2.0, // Set the desired scale factor for resizing
                child: Lottie.asset('assets/Stroe logo.json'),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'D Store', // Replace with your app name or desired text
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
