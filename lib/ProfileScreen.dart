import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile!!!!'),
      ),
      body: Center(
        child: Text(
          'profile!!!!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
