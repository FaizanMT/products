import 'componentsClass.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final List<Map<String, String>> usersList;

  LoginScreen({required this.usersList});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // color Color = color.red;

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
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                CustomTextField(
                    controller: _emailController,
                    labelText: 'Email',
                    hintText: 'Enter Email'),
                SizedBox(height: 16.0),
                CustomTextField(
                  controller: _passwordController,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                ),
                SizedBox(height: 24.0),
                Container(
                  width: double.infinity, // Take up full width
                  child: ElevatedButton(
                    onPressed: () {
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      // check(_emailController.text, _passwordController.text);

                      // Perform login validation here
                      bool isLoggedIn = false;

                      for (var user in widget.usersList) {
                        if ((user['email'] == email &&
                                user['password'] == password) ||
                            user['email'] == 'test' &&
                                user['password'] == '123') {
                          isLoggedIn = true;
                          break;
                        }
                      }

                      if (isLoggedIn) {
                        // Navigate to the home screen or perform desired action
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        // Show an error message or perform error handling
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Login Failed'),
                              content: Text('Invalid email or password.'),
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
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity, // Take up full width
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text('Want a New Account?'),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
