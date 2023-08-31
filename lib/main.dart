import 'package:flutter/material.dart';
import 'products.dart';
import 'SlashScreen.dart';
import 'GetStarted.dart';
import 'SignUp.dart';
import 'loginScreen.dart';
import 'CartScreen.dart';
import 'ProfileScreen.dart';
import 'SettingsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map<String, String>> usersList = [];
  final List<CartProduct> cartProducts = [];
  final List<Product> products = []; // Your list of products
  // Your list of cart products // Create the cartProducts list
  // const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/getStarted': (context) => GetStartedScreen(),
        '/login': (context) => LoginScreen(usersList: usersList),
        '/signup': (context) => SignUpScreen(usersList: usersList),
        '/home': (context) => Productsss(
              products: products,
              cartProducts: cartProducts,
            ),
        '/setting': (context) => SettingsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/cart': (context) => CartListScreen(
            // cartProducts: cartProducts,
            ),
      },
    );
  }
}
