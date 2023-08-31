import 'package:flutter/material.dart';
import 'products.dart';

class CartProduct {
  final int id;
  final String title;
  final String image;
  final double pricePKR; // Price in USD
  final int quantity;

  CartProduct({
    required this.id,
    required this.title,
    required this.image,
    required this.pricePKR,
    required this.quantity,
  });
}

class CartListScreen extends StatefulWidget {
  final List<CartProduct> cartProducts = [];

  // CartListScreen({required this.cartProducts});

  @override
  _CartListScreenState createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: ListView.builder(
        itemCount: widget.cartProducts.length,
        itemBuilder: (BuildContext context, int index) {
          if (widget.cartProducts.isEmpty) {
            return Text('no have items');
          } else {
            final product = widget.cartProducts[index];
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 16,
              ), // Adjust values as needed
              child: ListTile(
                leading: Image.asset(
                  product.image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    product.title,
                    style:
                        TextStyle(fontSize: 16), // Adjust font size as needed
                  ),
                ),
                trailing: Text('\Rs.${product.pricePKR.toStringAsFixed(2)}'),
                onTap: () {},
              ),
            );
          }
        },
      ),
    );
  }
}
