import 'package:flutter/material.dart';
import 'componentsClass.dart';

class SignUpScreen extends StatefulWidget {
  final List<Map<String, String>> usersList;

  SignUpScreen({required this.usersList});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context); // Navigate to the previous screen
                },
              ),
            ),
          ),
          SingleChildScrollView(
            // Add SingleChildScrollView here
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  CustomTextField(
                    controller: _emailController,
                    labelText: 'Email',
                    hintText: '',
                  ),
                  SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _passwordController,
                    labelText: 'Password',
                    hintText: '',
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _userNameController,
                    labelText: 'User Name',
                    hintText: '',
                  ),
                  SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _fullNameController,
                    labelText: 'Full Name',
                    hintText: '',
                  ),
                  SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _phoneNumberController,
                    labelText: 'Phone Number',
                    hintText: '',
                  ),
                  SizedBox(height: 16.0),
                  CustomTextField(
                    controller: _addressController,
                    labelText: 'Address',
                    hintText: '',
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: double.infinity, // Take up full width
                    child: ElevatedButton(
                      onPressed: () {
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        String userName = _userNameController.text;
                        String fullName = _fullNameController.text;
                        String phoneNumber = _phoneNumberController.text;
                        String address = _addressController.text;

                        // Perform sign-up validation here
                        if (email.isNotEmpty &&
                            password.isNotEmpty &&
                            userName.isNotEmpty &&
                            fullName.isNotEmpty &&
                            phoneNumber.isNotEmpty &&
                            address.isNotEmpty) {
                          // Store the sign-up details in the usersList
                          widget.usersList.add({
                            'email': email,
                            'password': password,
                            'userName': userName,
                            'fullName': fullName,
                            'phoneNumber': phoneNumber,
                            'address': address,
                          });

                          // Sign-up successful
                          // Perform desired action (e.g., navigate to the login screen)
                          Navigator.pushReplacementNamed(context, '/login');
                        } else {
                          // Show an error message or perform error handling
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Sign Up Failed'),
                                content: Text('Please fill in all fields.'),
                                actions: [
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                  // SizedBox(height: 20),
                  // Align(
                  //     alignment: Alignment.bottomCenter,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(0),
                  //       child: Container(
                  //         width: double.infinity, // Take up full width
                  //         child: ElevatedButton(
                  //           onPressed: () {
                  //             Navigator.pushNamed(context, '/login');
                  //           },
                  //           child: Text('Already A User.'),
                  //         ),
                  //       ),
                  //     ))
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(016.0),
                child: Container(
                  width: double.infinity, // Take up full width
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text('Already A User.'),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
