import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;

  CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        color: Colors.grey, // Set your desired text color here
      ),
      decoration: InputDecoration(
        labelText: labelText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple, // Set your desired line color here
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white, // Set your desired line color here
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red, // Set your desired line color here
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.white, // Set your desired label text color here
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey, // Set your desired hint text color here
        ),
      ),
      obscureText: obscureText,
    );
  }
}
