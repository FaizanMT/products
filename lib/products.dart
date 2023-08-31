import 'package:flutter/material.dart';
import 'SettingsScreen.dart';
import 'ProfileScreen.dart';
import 'CartScreen.dart';

class Productsss extends StatelessWidget {
  final List<Product> products;
  final List<CartProduct> cartProducts;

  Productsss({required this.products, required this.cartProducts});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100 things you cant Buy',
      theme: ThemeData(),
      home: ProductListScreen(
        products: products,
        cartProducts: cartProducts,
      ),
    );
  }
}

class Product {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final double priceUSD; // Price in USD
  final int quantity;
  final String color;
  final String brand;
  final String category;
  final double rating;

  // Calculated property for price in PKR
  double get pricePKR => priceUSD * 277.50;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.priceUSD,
    required this.quantity,
    required this.color,
    required this.brand,
    required this.category,
    required this.rating,
  });
}

class ProductListScreen extends StatefulWidget {
  final List<Product> products;
  final List<CartProduct> cartProducts; // Add this line

  ProductListScreen(
      {required this.products, required this.cartProducts}); // Add this line

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> products = [
    Product(
        id: 1,
        title: "Apple MacBook Pro",
        description: "A powerful laptop with stunning Retina display.",
        images: [
          "assets/images/macbook_pro_image1.jpg",
          "assets/images/macbook_pro_image2.jpg",
          "assets/images/macbook_pro_image3.jpg"
        ],
        priceUSD: 1999.99,
        quantity: 10,
        color: "Space Gray",
        brand: "Apple",
        category: "Electronics",
        rating: 9.5),
    Product(
        id: 2,
        title: "Nike Air Jordan Sneakers",
        description: "Stylish and comfortable athletic shoes.",
        images: [
          "assets/images/jordan_sneakers_image1.jpg",
          "assets/images/jordan_sneakers_image2.jpg"
        ],
        priceUSD: 149.99,
        quantity: 20,
        color: "Black/Red",
        brand: "Nike",
        category: "Clothing",
        rating: 8.7),
    Product(
        id: 3,
        title: "Philips Smart TV",
        description:
            "A high-definition smart TV with built-in streaming services.",
        images: [
          "assets/images/philips_tv_image1.jpg",
          "assets/images/philips_tv_image2.jpg"
        ],
        priceUSD: 799.99,
        quantity: 5,
        color: "Black",
        brand: "Philips",
        category: "Home Appliances",
        rating: 9.0),
    Product(
        id: 4,
        title: "MAC Cosmetics Lipstick",
        description: "A long-lasting and highly pigmented lipstick.",
        images: [
          "assets/images/mac_lipstick_image1.jpg",
          "assets/images/mac_lipstick_image2.jpg"
        ],
        priceUSD: 19.99,
        quantity: 50,
        color: "Ruby Woo",
        brand: "MAC Cosmetics",
        category: "Beauty",
        rating: 9.2),
    Product(
        id: 5,
        title: "The Alchemist by Paulo Coelho",
        description:
            "A best-selling philosophical novel about following your dreams.",
        images: ["assets/images/alchemist_book_image.jpg"],
        priceUSD: 12.99,
        quantity: 30,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.4),
    Product(
        id: 6,
        title: "Yeti Tundra Cooler",
        description: "A durable and insulated cooler for outdoor activities.",
        images: [
          "assets/images/yeti_cooler_image1.jpg",
          "assets/images/yeti_cooler_image2.jpg",
          "assets/images/yeti_cooler_image3.jpg",
          "assets/images/yeti_cooler_image4.jpg"
        ],
        priceUSD: 299.99,
        quantity: 15,
        color: "White",
        brand: "Yeti",
        category: "Sports & Outdoors",
        rating: 9.1),
    Product(
        id: 7,
        title: "Ikea Ektorp Sofa",
        description: "A comfortable and stylish sofa for your living room.",
        images: [
          "assets/images/ektorp_sofa_image1.jpg",
          "assets/images/ektorp_sofa_image2.jpg"
        ],
        priceUSD: 699.99,
        quantity: 8,
        color: "Beige",
        brand: "Ikea",
        category: "Home & Furniture",
        rating: 8.8),
    Product(
        id: 8,
        title: "Samsung Galaxy S21",
        description:
            "A flagship smartphone with a powerful camera and 5G capabilities.",
        images: [
          "assets/images/samsung_s21_image1.jpg",
          "assets/images/samsung_s21_image2.jpg"
        ],
        priceUSD: 1099.99,
        quantity: 12,
        color: "Phantom Black",
        brand: "Samsung",
        category: "Electronics",
        rating: 9.3),
    Product(
        id: 9,
        title: "Adidas Ultra Boost Shoes",
        description:
            "High-performance running shoes with responsive cushioning.",
        images: [
          "assets/images/ultra_boost_image1.jpg",
          "assets/images/ultra_boost_image2.jpg",
          "assets/images/ultra_boost_image3.jpg",
          "assets/images/ultra_boost_image4.jpg"
        ],
        priceUSD: 179.99,
        quantity: 25,
        color: "Black",
        brand: "Adidas",
        category: "Clothing",
        rating: 9.0),
    Product(
        id: 10,
        title: "KitchenAid Stand Mixer",
        description: "A versatile and durable mixer for baking enthusiasts.",
        images: [
          "assets/images/kitchenaid_mixer_image1.jpg",
          "assets/images/kitchenaid_mixer_image2.png",
          "assets/images/kitchenaid_mixer_image3.jpg"
        ],
        priceUSD: 349.99,
        quantity: 7,
        color: "Empire Red",
        brand: "KitchenAid",
        category: "Home Appliances",
        rating: 9.6),
    Product(
        id: 11,
        title: "Fenty Beauty Pro Filt'r Foundation",
        description:
            "A lightweight and buildable foundation for a natural-looking finish.",
        images: [
          "assets/images/fenty_foundation_image1.jpg",
          "assets/images/fenty_foundation_image2.jpg",
          "assets/images/fenty_foundation_image3.jpg"
        ],
        priceUSD: 35.99,
        quantity: 40,
        color: "220 - Neutral",
        brand: "Fenty Beauty",
        category: "Beauty",
        rating: 9.2),
    Product(
        id: 12,
        title: "The Lord of the Rings Trilogy",
        description: "The epic fantasy trilogy by J.R.R. Tolkien.",
        images: ["assets/images/lotr_trilogy_book_image.png"],
        priceUSD: 29.99,
        quantity: 20,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.7),
    Product(
        id: 13,
        title: "GoPro HERO9 Black",
        description:
            "A versatile action camera for capturing adventures in high resolution.",
        images: [
          "assets/images/gopro_hero9_image1.jpg",
          "assets/images/gopro_hero9_image2.jpg",
          "assets/images/gopro_hero9_image3.jpeg"
        ],
        priceUSD: 399.99,
        quantity: 10,
        color: "Black",
        brand: "GoPro",
        category: "Sports & Outdoors",
        rating: 9.4),
    Product(
        id: 14,
        title: "Dyson V11 Absolute Vacuum Cleaner",
        description:
            "A cordless and powerful vacuum cleaner with advanced filtration.",
        images: [
          "assets/images/dyson_v11_image1.jpg",
          "assets/images/dyson_v11_image2.jpg",
          "assets/images/dyson_v11_image3.jpg",
          "assets/images/dyson_v11_image4.jpg"
        ],
        priceUSD: 599.99,
        quantity: 5,
        color: "Blue",
        brand: "Dyson",
        category: "Home & Furniture",
        rating: 9.3),
    Product(
        id: 15,
        title: "Sony PlayStation 5",
        description:
            "The latest gaming console with stunning graphics and immersive gameplay.",
        images: [
          "assets/images/ps5_image1.png",
          "assets/images/ps5_image2.jpg",
          "assets/images/ps5_image3.jpg",
          "assets/images/ps5_image4.jpg"
        ],
        priceUSD: 499.99,
        quantity: 3,
        color: "White",
        brand: "Sony",
        category: "Electronics",
        rating: 9.5),
    Product(
        id: 16,
        title: "Levi's 501 Original Fit Jeans",
        description: "Classic jeans with a straight fit and timeless style.",
        images: [
          "assets/images/levis_501_image1.jpg",
          "assets/images/levis_501_image2.jpg",
          "assets/images/levis_501_image3.jpg"
        ],
        priceUSD: 79.99,
        quantity: 30,
        color: "Dark Blue",
        brand: "Levi's",
        category: "Clothing",
        rating: 8.9),
    Product(
        id: 17,
        title: "Breville Barista Express Espresso Machine",
        description:
            "A semi-automatic espresso machine for coffee enthusiasts.",
        images: [
          "assets/images/breville_espresso_image1.jpg",
          "assets/images/breville_espresso_image2.jpg",
          "assets/images/breville_espresso_image3.jpg",
          "assets/images/breville_espresso_image4.jpg"
        ],
        priceUSD: 699.99,
        quantity: 6,
        color: "Stainless Steel",
        brand: "Breville",
        category: "Home Appliances",
        rating: 9.6),
    Product(
        id: 18,
        title: "Anastasia Beverly Hills Modern Renaissance Eyeshadow Palette",
        description:
            "A highly pigmented eyeshadow palette with a range of warm tones.",
        images: [
          "assets/images/modern_renaissance_image1.jpg",
          "assets/images/modern_renaissance_image2.jpg",
          "assets/images/modern_renaissance_image3.jpg"
        ],
        priceUSD: 42.99,
        quantity: 15,
        color: "Multi-color",
        brand: "Anastasia Beverly Hills",
        category: "Beauty",
        rating: 9.1),
    Product(
        id: 19,
        title: "Educated by Tara Westover",
        description:
            "A memoir about a woman's journey to self-education and empowerment.",
        images: ["assets/images/educated_book_image.jpg"],
        priceUSD: 17.99,
        quantity: 25,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.3),
    Product(
        id: 20,
        title: "Fitbit Charge 4 Fitness Tracker",
        description:
            "A sleek and feature-packed fitness tracker for monitoring your health.",
        images: [
          "assets/images/fitbit_charge4_image1.jpg",
          "assets/images/fitbit_charge4_image2.jpg",
          "assets/images/fitbit_charge4_image3.jpg",
          "assets/images/fitbit_charge4_image4.jpg"
        ],
        priceUSD: 149.99,
        quantity: 12,
        color: "Black",
        brand: "Fitbit",
        category: "Sports & Outdoors",
        rating: 9.0),
    Product(
        id: 21,
        title: "Instant Pot Duo 7-in-1 Electric Pressure Cooker",
        description: "A versatile kitchen appliance for fast and easy cooking.",
        images: [
          "assets/images/instant_pot_image1.jpg",
          "assets/images/instant_pot_image2.jpg",
          "assets/images/instant_pot_image3.jpg"
        ],
        priceUSD: 89.99,
        quantity: 8,
        color: "Silver",
        brand: "Instant Pot",
        category: "Home Appliances",
        rating: 9.4),
    Product(
        id: 22,
        title: "Chanel Coco Mademoiselle Eau de Parfum",
        description: "A sophisticated and timeless fragrance for women.",
        images: [
          "assets/images/coco_mademoiselle_image1.jpg",
          "assets/images/coco_mademoiselle_image2.jpg"
        ],
        priceUSD: 129.99,
        quantity: 18,
        color: "N/A",
        brand: "Chanel",
        category: "Beauty",
        rating: 9.7),
    Product(
        id: 23,
        title: "To Kill a Mockingbird by Harper Lee",
        description:
            "A classic novel about racial injustice and moral courage.",
        images: ["assets/images/mockingbird_book_image.jpg"],
        priceUSD: 9.99,
        quantity: 40,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.5),
    Product(
        id: 24,
        title: "Columbia Men's Watertight II Rain Jacket",
        description:
            "A waterproof and breathable rain jacket for outdoor activities.",
        images: [
          "assets/images/columbia_jacket_image1.jpg",
          "assets/images/columbia_jacket_image2.jpg"
        ],
        priceUSD: 59.99,
        quantity: 15,
        color: "Black",
        brand: "Columbia",
        category: "Sports & Outdoors",
        rating: 9.2),
    Product(
        id: 25,
        title: "Samsung 65-Inch QLED 4K Smart TV",
        description:
            "A stunning 4K smart TV with Quantum Dot technology for vibrant colors.",
        images: [
          "assets/images/samsung_qled_tv_image1.jpg",
          "assets/images/samsung_qled_tv_image2.jpg"
        ],
        priceUSD: 1499.99,
        quantity: 4,
        color: "Black",
        brand: "Samsung",
        category: "Electronics",
        rating: 9.3),
    Product(
        id: 26,
        title: "Ray-Ban Classic Aviator Sunglasses",
        description: "Iconic sunglasses with a timeless aviator design.",
        images: [
          "assets/images/rayban_aviator_image1.jpg",
          "assets/images/rayban_aviator_image2.png"
        ],
        priceUSD: 149.99,
        quantity: 25,
        color: "Gold/Green",
        brand: "Ray-Ban",
        category: "Clothing",
        rating: 9.1),
    Product(
        id: 27,
        title: "Nespresso VertuoPlus Coffee and Espresso Machine",
        description:
            "A versatile coffee and espresso machine for the perfect cup every time.",
        images: [
          "assets/images/nespresso_vertuoplus_image1.jpg",
          "assets/images/nespresso_vertuoplus_image2.jpg",
          "assets/images/nespresso_vertuoplus_image3.jpg"
        ],
        priceUSD: 199.99,
        quantity: 9,
        color: "Black",
        brand: "Nespresso",
        category: "Home Appliances",
        rating: 9.5),
    Product(
        id: 28,
        title: "Urban Decay Naked3 Eyeshadow Palette",
        description: "A popular eyeshadow palette with a range of rosy hues.",
        images: [
          "assets/images/naked3_palette_image1.jpg",
          "assets/images/naked3_palette_image2.jpg",
          "assets/images/naked3_palette_image3.jpg"
        ],
        priceUSD: 54.99,
        quantity: 20,
        color: "Rose",
        brand: "Urban Decay",
        category: "Beauty",
        rating: 8.8),
    Product(
        id: 29,
        title: "The Great Gatsby by F. Scott Fitzgerald",
        description:
            "A classic novel depicting the glamorous and tumultuous 1920s.",
        images: ["assets/images/gatsby_book_image.jpg"],
        priceUSD: 14.99,
        quantity: 35,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.0),
    Product(
        id: 30,
        title: "YETI Rambler Stainless Steel Vacuum Insulated Tumbler",
        description:
            "A durable and insulated tumbler for keeping drinks hot or cold.",
        images: [
          "assets/images/yeti_tumbler_image1.jpg",
          "assets/images/yeti_tumbler_image2.jpg",
          "assets/images/yeti_tumbler_image3.jpg"
        ],
        priceUSD: 29.99,
        quantity: 15,
        color: "Stainless Steel",
        brand: "YETI",
        category: "Sports & Outdoors",
        rating: 9.2),
    Product(
        id: 31,
        title: "KitchenAid Artisan Series 5-Quart Stand Mixer",
        description:
            "A versatile and powerful stand mixer for all your baking needs.",
        images: [
          "assets/images/kitchenaid_mixer_image1.jpg",
          "assets/images/kitchenaid_mixer_image2.jpg"
        ],
        priceUSD: 399.99,
        quantity: 8,
        color: "Empire Red",
        brand: "KitchenAid",
        category: "Home Appliances",
        rating: 9.6),
    Product(
        id: 32,
        title: "Fenty Beauty Killawatt Freestyle Highlighter",
        description:
            "A versatile and long-lasting highlighter for a radiant glow.",
        images: [
          "assets/images/fenty_highlighter_image1.jpg",
          "assets/images/fenty_highlighter_image2.jpg",
          "assets/images/fenty_highlighter_image3.jpg"
        ],
        priceUSD: 36.99,
        quantity: 30,
        color: "Trophy Wife",
        brand: "Fenty Beauty",
        category: "Beauty",
        rating: 9.3),
    Product(
        id: 33,
        title: "1984 by George Orwell",
        description: "A dystopian novel depicting a totalitarian society.",
        images: ["assets/images/1984 by George Orwell.jpg"],
        priceUSD: 10.99,
        quantity: 25,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.1),
    Product(
        id: 34,
        title: "Garmin Forerunner 245 Music GPS Running Smartwatch",
        description:
            "A feature-packed smartwatch for tracking your running performance.",
        images: [
          "assets/images/garmin_forerunner_image1.jpg",
          "assets/images/garmin_forerunner_image2.jpg",
          "assets/images/garmin_forerunner_image3.jpg"
        ],
        priceUSD: 299.99,
        quantity: 10,
        color: "Black",
        brand: "Garmin",
        category: "Sports & Outdoors",
        rating: 9.5),
    Product(
        id: 35,
        title: "Dyson Supersonic Hair Dryer",
        description:
            "A high-speed hair dryer that helps prevent extreme heat damage.",
        images: [
          "assets/images/dyson_hairdryer_image1.jpg",
          "assets/images/dyson_hairdryer_image2.jpg"
        ],
        priceUSD: 399.99,
        quantity: 5,
        color: "Iron/Fuchsia",
        brand: "Dyson",
        category: "Home & Furniture",
        rating: 9.4),
    Product(
        id: 36,
        title: "Apple Watch Series 6",
        description:
            "A powerful smartwatch with advanced health and fitness features.",
        images: [
          "assets/images/apple_watch_image1.jpg",
          "assets/images/apple_watch_image2.jpg",
          "assets/images/apple_watch_image3.jpg"
        ],
        priceUSD: 399.99,
        quantity: 7,
        color: "Space Gray",
        brand: "Apple",
        category: "Electronics",
        rating: 9.6),
    Product(
        id: 37,
        title: "Levi's Men's 511 Slim Fit Jeans",
        description: "Modern slim-fit jeans with stretch for all-day comfort.",
        images: [
          "assets/images/levis_511_image1.jpg",
          "assets/images/levis_511_image2.jpg",
          "assets/images/levis_511_image3.jpg",
          "assets/images/levis_511_image4.jpg"
        ],
        priceUSD: 69.99,
        quantity: 20,
        color: "Dark Indigo",
        brand: "Levi's",
        category: "Clothing",
        rating: 9.0),
    Product(
        id: 38,
        title: "Cuisinart 14-Cup Food Processor",
        description:
            "A versatile and powerful food processor for effortless food preparation.",
        images: [
          "assets/images/cuisinart_processor_image1.jpg",
          "assets/images/cuisinart_processor_image2.jpg",
          "assets/images/cuisinart_processor_image3.jpg",
          "assets/images/cuisinart_processor_image4.jpg"
        ],
        priceUSD: 199.99,
        quantity: 8,
        color: "Brushed Stainless",
        brand: "Cuisinart",
        category: "Home Appliances",
        rating: 9.4),
    Product(
        id: 39,
        title: "Anastasia Beverly Hills Soft Glam Eyeshadow Palette",
        description:
            "A versatile eyeshadow palette with a mix of matte and shimmer shades.",
        images: [
          "assets/images/soft_glam_palette_image1.jpg",
          "assets/images/soft_glam_palette_image2.jpg"
        ],
        priceUSD: 42.99,
        quantity: 15,
        color: "Multi-color",
        brand: "Anastasia Beverly Hills",
        category: "Beauty",
        rating: 9.3),
    Product(
        id: 40,
        title: "Sapiens: A Brief History of Humankind by Yuval Noah Harari",
        description:
            "A thought-provoking book that explores the history and future of humanity.",
        images: ["assets/images/sapiens_book_image.jpg"],
        priceUSD: 21.99,
        quantity: 30,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.1),
    Product(
        id: 41,
        title: "Sony WH-1000XM4 Wireless Noise-Canceling Headphones",
        description:
            "Premium wireless headphones with industry-leading noise cancellation.",
        images: [
          "assets/images/sony_headphones_image1.jpg",
          "assets/images/sony_headphones_image2.jpg",
          "assets/images/sony_headphones_image3.jpg"
        ],
        priceUSD: 349.99,
        quantity: 10,
        color: "Black",
        brand: "Sony",
        category: "Electronics",
        rating: 9.7),
    Product(
        id: 42,
        title:
            "Samsung QN65Q80RAFXZA Flat 65-Inch QLED 4K Q80 Series Ultra HD Smart TV",
        description:
            "A high-quality 4K smart TV with stunning picture quality and smart features.",
        images: [
          "assets/images/samsung_tv_image1.jpg",
          "assets/images/samsung_tv_image2.jpg",
          "assets/images/samsung_tv_image3.jpg"
        ],
        priceUSD: 1499.99,
        quantity: 5,
        color: "Titan Black",
        brand: "Samsung",
        category: "Electronics",
        rating: 9.5),
    Product(
        id: 43,
        title: "Nike Air Zoom Pegasus 38 Men's Running Shoes",
        description:
            "Comfortable and responsive running shoes for enhanced performance.",
        images: [
          "assets/images/nike_pegasus_image1.jpg",
          "assets/images/nike_pegasus_image2.jpg",
          "assets/images/nike_pegasus_image3.jpg"
        ],
        priceUSD: 119.99,
        quantity: 15,
        color: "Black/White",
        brand: "Nike",
        category: "Sports & Outdoors",
        rating: 9.2),
    Product(
        id: 44,
        title: "Instant Pot Duo 7-in-1 Electric Pressure Cooker",
        description:
            "A versatile and efficient pressure cooker for quick and easy cooking.",
        images: [
          "assets/images/instant_pot_black_image1.jpg",
          "assets/images/instant_pot_black_image2.jpg",
          "assets/images/instant_pot_black_image3.jpg"
        ],
        priceUSD: 79.99,
        quantity: 12,
        color: "Stainless Steel/Black",
        brand: "Instant Pot",
        category: "Home Appliances",
        rating: 9.4),
    Product(
        id: 45,
        title: "MAC Lipstick",
        description:
            "A wide range of lipstick shades with various finishes for any occasion.",
        images: [
          "assets/images/mac_lipstick_saint_Germain_image1.jpg",
          "assets/images/mac_lipstick_saint_Germain_image2.jpg"
        ],
        priceUSD: 19.99,
        quantity: 25,
        color: "saint Germain",
        brand: "MAC",
        category: "Beauty",
        rating: 8.9),
    Product(
        id: 46,
        title: "Pride and Prejudice is a novel written by Jane Austen",
        description:
            "Pride and Prejudice is a classic novel by Jane Austen that explores the complexities of love, social status, and personal growth in 19th-century England",
        images: ["assets/images/Prejudice_book_image.jpg"],
        priceUSD: 12.99,
        quantity: 35,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.3),
    Product(
        id: 47,
        title: "Fitbit Charge 2 Fitness and Activity Tracker",
        description:
            "A feature-rich fitness tracker for monitoring your activity and health.",
        images: [
          "assets/images/fitbit_charge2_image1.png",
          "assets/images/fitbit_charge2_image2.jpg"
        ],
        priceUSD: 129.99,
        quantity: 8,
        color: "Black",
        brand: "Fitbit",
        category: "Electronics",
        rating: 9.0),
    Product(
        id: 48,
        title: "Bose QuietComfort 35 II Wireless Bluetooth Headphones",
        description:
            "Premium wireless headphones with excellent noise cancellation and audio quality.",
        images: [
          "assets/images/bose_headphones_image1.png",
          "assets/images/bose_headphones_image2.jpg"
        ],
        priceUSD: 299.99,
        quantity: 10,
        color: "Silver",
        brand: "Bose",
        category: "Electronics",
        rating: 9.6),
    Product(
        id: 49,
        title: "Apple iPad Pro (2021)",
        description:
            "The latest iPad Pro with a stunning Liquid Retina XDR display and powerful M1 chip.",
        images: [
          "assets/images/ipad_pro_image1.jpg",
          "assets/images/ipad_pro_image2.jpg",
          "assets/images/ipad_pro_image3.jpg"
        ],
        priceUSD: 1099.99,
        quantity: 5,
        color: "Space Gray",
        brand: "Apple",
        category: "Electronics",
        rating: 9.8),
    Product(
        id: 50,
        title: "Adidas Ultraboost 21 Men's Running Shoes",
        description:
            "High-performance running shoes with responsive cushioning and a lightweight design.",
        images: [
          "assets/images/adidas_ultraboost_image1.jpg",
          "assets/images/adidas_ultraboost_image2.jpg",
          "assets/images/adidas_ultraboost_image3.jpg"
        ],
        priceUSD: 179.99,
        quantity: 15,
        color: "Core Black",
        brand: "Adidas",
        category: "Sports & Outdoors",
        rating: 9.2),
    Product(
        id: 51,
        title: "Samsung Bespoke Jet Pro Extra VS20A95973B/WA",
        description:
            "Powerful cordless vacuum cleaner with advanced filtration and intelligent cleaning modes.",
        images: [
          "assets/images/Bespoke Jet image1.jpg",
          "assets/images/Bespoke Jet image2.png",
          "assets/images/Bespoke Jet image3.jpg"
        ],
        priceUSD: 599.99,
        quantity: 12,
        color: "Blue",
        brand: "Dyson",
        category: "Home Appliances",
        rating: 9.5),
    Product(
        id: 52,
        title: "Urban Decay Naked5 Eyeshadow Palette",
        description:
            "A versatile eyeshadow palette with 12 rose-hued shades and a dual-ended brush.",
        images: [
          "assets/images/urban_decay_Naked5_image1.jpg",
          "assets/images/urban_decay_Naked5_image2.jpg"
        ],
        priceUSD: 54.99,
        quantity: 25,
        color: "Rose",
        brand: "Urban Decay",
        category: "Beauty",
        rating: 8.8),
    Product(
        id: 53,
        title: "Mrs Dalloway by Virginia Woolf",
        description:
            "Mrs Dalloway by Virginia Woolf intricately weaves a day in the life of Clarissa Dalloway, exploring the inner workings of her mind and the societal pressures she faces in post-war London.",
        images: ["assets/images/Mrs Dalloway_book_image.jpg"],
        priceUSD: 9.99,
        quantity: 35,
        color: "N/A",
        brand: "N/A",
        category: "Books",
        rating: 9.4),
    Product(
        id: 54,
        title: "GoPro HERO10 Black - Waterproof Action Camera",
        description:
            "A versatile action camera with advanced features for capturing stunning videos and photos.",
        images: [
          "assets/images/gopro_hero10_image1.jpg",
          "assets/images/gopro_hero10_image2.jpg",
          "assets/images/gopro_hero10_image3.jpg"
        ],
        priceUSD: 599.99,
        quantity: 7,
        color: "Black",
        brand: "GoPro",
        category: "Electronics",
        rating: 9.1),
    Product(
        id: 55,
        title: "Fitbit Inspire 2 Fitness Tracker",
        description:
            "A sleek fitness tracker with heart rate monitoring, activity tracking, and up to 10 days of battery life.",
        images: [
          "assets/images/fitbit_inspire2_image1.png",
          "assets/images/fitbit_inspire2_image2.jpg",
          "assets/images/fitbit_inspire2_image3.jpg"
        ],
        priceUSD: 99.95,
        quantity: 18,
        color: "Black",
        brand: "Fitbit",
        category: "Electronics",
        rating: 8.9),
    Product(
        id: 56,
        title: "Sony WF-1000XM3 - Wireless Noise Cancelling Headphones",
        description:
            "Premium wireless headphones with industry-leading noise cancellation and exceptional audio quality.",
        images: [
          "assets/images/sony_WF_1000XM3_image1.jpg",
          "assets/images/sony_WF_1000XM3_image2.jpg",
          "assets/images/sony_WF_1000XM3_image3.jpg"
        ],
        priceUSD: 349.99,
        quantity: 9,
        color: "Black",
        brand: "Sony",
        category: "Electronics",
        rating: 9.7),
    Product(
        id: 57,
        title: "Samsung Galaxy Watch 4 Classic",
        description:
            "A stylish and feature-packed smartwatch with health and fitness tracking capabilities.",
        images: [
          "assets/images/samsung_watch_image1.jpg",
          "assets/images/samsung_watch_image2.jpg",
          "assets/images/samsung_watch_image3.jpg"
        ],
        priceUSD: 349.99,
        quantity: 14,
        color: "Silver",
        brand: "Samsung",
        category: "Electronics",
        rating: 9.3),
    Product(
        id: 58,
        title: "Nike Air Max 270 Women's Running Shoes",
        description:
            "Comfortable running shoes with a stylish design and responsive cushioning.",
        images: [
          "assets/images/nike_airmax_image1.jpg",
          "assets/images/nike_airmax_image2.jpg",
          "assets/images/nike_airmax_image3.jpg"
        ],
        priceUSD: 149.99,
        quantity: 20,
        color: "White",
        brand: "Nike",
        category: "Sports & Outdoors",
        rating: 9.0),
    Product(
        id: 59,
        title: "Cuisinart DLC-6 8-Cup Food Processor",
        description:
            "A versatile food processor for chopping, slicing, shredding, and more.",
        images: [
          "assets/images/cuisinart_foodprocessor6_image1.jpg",
          "assets/images/cuisinart_foodprocessor6_image2.jpg",
          "assets/images/cuisinart_foodprocessor6_image3.jpg"
        ],
        priceUSD: 199.99,
        quantity: 11,
        color: "Stainless Steel",
        brand: "Cuisinart",
        category: "Home & Kitchen",
        rating: 8.7),
    Product(
        id: 60,
        title: "Anker PowerCore 26800 Portable Charger",
        description:
            "A high-capacity portable charger with fast charging technology for smartphones and other devices.",
        images: [
          "assets/images/anker_powercore_image1.jpg",
          "assets/images/anker_powercore_image2.jpg",
          "assets/images/anker_powercore_image3.jpg"
        ],
        priceUSD: 59.99,
        quantity: 23,
        color: "Black",
        brand: "Anker",
        category: "Electronics",
        rating: 8.5),
    Product(
        id: 61,
        title: "Fujifilm Instax Mini 11 Instant Camera",
        description:
            "A fun and compact instant camera for capturing and printing memories on the go.",
        images: [
          "assets/images/fujifilm_instax_image1.jpg",
          "assets/images/fujifilm_instax_image2.jpg",
          "assets/images/fujifilm_instax_image3.jpg",
          "assets/images/fujifilm_instax_image4.jpg"
        ],
        priceUSD: 69.99,
        quantity: 17,
        color: "Blush Pink",
        brand: "Fujifilm",
        category: "Electronics",
        rating: 8.3),
    Product(
        id: 62,
        title: "Huda Beauty Desert Dusk Eyeshadow Palette",
        description:
            "A highly pigmented eyeshadow palette inspired by the colors of the desert.",
        images: [
          "assets/images/huda_beauty_palette_image1.jpg",
          "assets/images/huda_beauty_palette_image2.jpg"
        ],
        priceUSD: 65.00,
        quantity: 28,
        color: "Multi",
        brand: "Huda Beauty",
        category: "Beauty",
        rating: 9.2),
    Product(
        id: 63,
        title: "Amazon Echo Dot (4th Generation)",
        description:
            "A smart speaker with Alexa voice assistant for hands-free control of your music and smart home devices.",
        images: [
          "assets/images/amazon_echo_dot_image1.jpg",
          "assets/images/amazon_echo_dot_image2.jpg",
          "assets/images/amazon_echo_dot_image3.jpg"
        ],
        priceUSD: 49.99,
        quantity: 30,
        color: "Charcoal",
        brand: "Amazon",
        category: "Electronics",
        rating: 8.9),
    Product(
        id: 64,
        title: "Oculus Quest 2 - Virtual Reality Headset",
        description:
            "An all-in-one VR gaming headset with built-in tracking and high-resolution displays.",
        images: [
          "assets/images/oculus_quest2_image1.jpg",
          "assets/images/oculus_quest2_image2.jpg",
          "assets/images/oculus_quest2_image3.jpg",
          "assets/images/oculus_quest2_image4.jpg"
        ],
        priceUSD: 299.00,
        quantity: 8,
        color: "White",
        brand: "Oculus",
        category: "Electronics",
        rating: 9.5),
    Product(
        id: 65,
        title: "Canon EOS Rebel T7i DSLR Camera",
        description:
            "A feature-packed DSLR camera with high-resolution imaging and advanced autofocus capabilities.",
        images: [
          "assets/images/canon_eos_rebel_image1.jpg",
          "assets/images/canon_eos_rebel_image2.jpg",
          "assets/images/canon_eos_rebel_image3.jpg",
          "assets/images/canon_eos_rebel_image4.jpg"
        ],
        priceUSD: 799.00,
        quantity: 6,
        color: "Black",
        brand: "Canon",
        category: "Electronics",
        rating: 9.4),
    Product(
        id: 66,
        title: "Fitbit Versa 3 Smartwatch",
        description:
            "A versatile smartwatch with built-in GPS, heart rate monitoring, and advanced health tracking features.",
        images: [
          "assets/images/fitbit_versa3_image1.jpg",
          "assets/images/fitbit_versa3_image2.jpg",
          "assets/images/fitbit_versa3_image3.jpg",
          "assets/images/fitbit_versa3_image4.jpg"
        ],
        priceUSD: 229.95,
        quantity: 16,
        color: "Midnight",
        brand: "Fitbit",
        category: "Electronics",
        rating: 9.2),
    Product(
        id: 67,
        title: "Sony PlayStation 5",
        description:
            "The latest gaming console with cutting-edge graphics and immersive gaming experiences.",
        images: [
          "assets/images/playstation5_image1.jpg",
          "assets/images/playstation5_image2.jpg"
        ],
        priceUSD: 499.99,
        quantity: 3,
        color: "White",
        brand: "Sony",
        category: "Electronics",
        rating: 9.9),
    Product(
        id: 68,
        title: "Nike Air Zoom Pegasus 38 Women's Running Shoes",
        description:
            "Versatile running shoes with responsive cushioning and a breathable mesh upper.",
        images: [
          "assets/images/nike_pegasus_image1.jpg",
          "assets/images/nike_pegasus_image2.jpg"
        ],
        priceUSD: 119.99,
        quantity: 21,
        color: "Pink Blast/Black",
        brand: "Nike",
        category: "Sports & Outdoors",
        rating: 9.1),
    Product(
        id: 69,
        title: "KitchenAid Stand Mixer",
        description:
            "A powerful and versatile stand mixer for all your baking and cooking needs.",
        images: [
          "assets/images/kitchenaid_mixer_image1.jpg",
          "assets/images/kitchenaid_mixer_image2.jpg"
        ],
        priceUSD: 399.99,
        quantity: 13,
        color: "Empire Red",
        brand: "KitchenAid",
        category: "Home & Kitchen",
        rating: 9.6),
    Product(
        id: 70,
        title: "JBL Flip 5 Portable Bluetooth Speaker",
        description:
            "A compact and waterproof Bluetooth speaker with powerful sound and long battery life.",
        images: [
          "assets/images/jbl_flip5_image1.jpg",
          "assets/images/jbl_flip5_image2.jpg",
          "assets/images/jbl_flip5_image3.jpg",
          "assets/images/jbl_flip5_image4.jpg",
          "assets/images/jbl_flip5_image5.jpg"
        ],
        priceUSD: 119.95,
        quantity: 24,
        color: "Squad",
        brand: "JBL",
        category: "Electronics",
        rating: 8.8),
    Product(
        id: 71,
        title: "Samsung 65-Inch QLED 4K UHD Smart TV",
        description:
            "A stunning 65-inch QLED TV with vibrant colors and smart features for an immersive viewing experience.",
        images: [
          "assets/images/samsung_qledtv_image1.jpg",
          "assets/images/samsung_qledtv_image2.jpg",
          "assets/images/samsung_qledtv_image3.jpg",
          "assets/images/samsung_qledtv_image4.jpg"
        ],
        priceUSD: 1299.99,
        quantity: 5,
        color: "Black",
        brand: "Samsung",
        category: "Electronics",
        rating: 9.7),
    Product(
        id: 72,
        title: "MacBook Air (M1, 2020)",
        description:
            "Apple's ultra-thin and lightweight laptop with the powerful M1 chip for fast performance and long battery life.",
        images: [
          "assets/images/macbook_air_image1.jpg",
          "assets/images/macbook_air_image2.jpg",
          "assets/images/macbook_air_image3.jpg",
          "assets/images/macbook_air_image4.jpg"
        ],
        priceUSD: 999.00,
        quantity: 9,
        color: "Gold",
        brand: "Apple",
        category: "Electronics",
        rating: 9.5),
    Product(
        id: 73,
        title: "Estée Lauder Double Wear Stay-in-Place Foundation",
        description:
            "A long-wearing foundation with a matte finish that provides flawless coverage.",
        images: [
          "assets/images/estee_lauder_foundation_image1.jpg",
          "assets/images/estee_lauder_foundation_image2.jpg",
          "assets/images/estee_lauder_foundation_image3.jpg"
        ],
        priceUSD: 43.00,
        quantity: 30,
        color: "Ivory Beige",
        brand: "Estée Lauder",
        category: "Beauty",
        rating: 9.2),
    Product(
        id: 74,
        title: "Sony WH-1000XM4 Wireless Noise-Canceling Headphones",
        description:
            "Premium wireless headphones with industry-leading noise cancellation and exceptional audio quality.",
        images: [
          "assets/images/sony_headphones_image1.jpg",
          "assets/images/sony_headphones_image2.jpg"
        ],
        priceUSD: 349.99,
        quantity: 8,
        color: "Black",
        brand: "Sony",
        category: "Electronics",
        rating: 9.7),
    Product(
        id: 75,
        title: "Nintendo Switch Lite",
        description:
            "A compact and lightweight gaming console for gaming on the go.",
        images: [
          "assets/images/nintendo_switch_lite_image1.jpg",
          "assets/images/nintendo_switch_lite_image2.jpg",
          "assets/images/nintendo_switch_lite_image3.jpg"
        ],
        priceUSD: 199.99,
        quantity: 11,
        color: "Yellow",
        brand: "Nintendo",
        category: "Electronics",
        rating: 9.3),
    Product(
        id: 76,
        title: "Fitbit Charge 4 Fitness and Activity Tracker",
        description:
            "An advanced fitness and activity tracker with built-in GPS and heart rate monitoring.",
        images: [
          "assets/images/fitbit_charge4_image1.jpg",
          "assets/images/fitbit_charge4_image2.jpg"
        ],
        priceUSD: 149.95,
        quantity: 14,
        color: "Black",
        brand: "Fitbit",
        category: "Electronics",
        rating: 8.9),
    Product(
        id: 77,
        title: "Cuisinart 12-Piece Stainless Steel Cookware Set",
        description:
            "A high-quality stainless steel cookware set with a variety of pots and pans for versatile cooking.",
        images: [
          "assets/images/cuisinart_cookware_image1.jpg",
          "assets/images/cuisinart_cookware_image2.jpg",
          "assets/images/cuisinart_cookware_image3.jpg",
          "assets/images/cuisinart_cookware_image4.jpg"
        ],
        priceUSD: 199.99,
        quantity: 12,
        color: "Silver",
        brand: "Cuisinart",
        category: "Home & Kitchen",
        rating: 8.6),
    Product(
        id: 78,
        title: "Apple Watch Series 6",
        description:
            "A powerful and feature-packed smartwatch with advanced health and fitness tracking capabilities.",
        images: [
          "assets/images/apple_watch_image1.jpg",
          "assets/images/apple_watch_image2.jpg"
        ],
        priceUSD: 399.00,
        quantity: 9,
        color: "Space Gray",
        brand: "Apple",
        category: "Electronics",
        rating: 9.8),
    Product(
        id: 79,
        title: "Bose SoundLink Revolve+ Portable Bluetooth Speaker",
        description:
            "A portable and water-resistant Bluetooth speaker with 360-degree sound and long battery life.",
        images: [
          "assets/images/bose_speaker_image1.jpg",
          "assets/images/bose_speaker_image2.jpg"
        ],
        priceUSD: 299.00,
        quantity: 6,
        color: "Triple Black",
        brand: "Bose",
        category: "Electronics",
        rating: 9.4),
    Product(
        id: 80,
        title: "LEGO Star Wars Millennium Falcon Building Kit",
        description:
            "A detailed LEGO set featuring the iconic Millennium Falcon from Star Wars.",
        images: [
          "assets/images/lego_millenniumfalcon_image1.jpg",
          "assets/images/lego_millenniumfalcon_image2.jpg"
        ],
        priceUSD: 159.99,
        quantity: 10,
        color: "Multicolor",
        brand: "LEGO",
        category: "Toys & Games",
        rating: 9.1),
    Product(
        id: 81,
        title: "Samsung 65-Inch 4K Ultra HD Smart TV",
        description:
            "A high-quality 65-inch 4K Ultra HD smart TV with vibrant colors and immersive viewing experience.",
        images: [
          "assets/images/samsung_tv_image1.jpg",
          "assets/images/samsung_tv_image2.jpg",
          "assets/images/samsung_tv_image2.jpg"
        ],
        priceUSD: 899.99,
        quantity: 5,
        color: "Black",
        brand: "Samsung",
        category: "Electronics",
        rating: 9.2),
    Product(
        id: 82,
        title: "GoPro HERO9 Black Waterproof Action Camera",
        description:
            "A versatile waterproof action camera with advanced features for capturing stunning photos and videos.",
        images: [
          "assets/images/gopro_hero9_image1.jpg",
          "assets/images/gopro_hero9_image2.jpg"
        ],
        priceUSD: 449.99,
        quantity: 7,
        color: "Black",
        brand: "GoPro",
        category: "Electronics",
        rating: 9.6),
    Product(
        id: 83,
        title: "Hamilton Beach 12-Cup Coffee Maker",
        description:
            "A programmable coffee maker with a 12-cup capacity and customizable brewing options.",
        images: [
          "assets/images/hamiltonbeach_coffeemaker_image1.jpg",
          "assets/images/hamiltonbeach_coffeemaker_image2.jpg",
          "assets/images/hamiltonbeach_coffeemaker_image3.jpg",
          "assets/images/hamiltonbeach_coffeemaker_image4.jpg"
        ],
        priceUSD: 39.99,
        quantity: 15,
        color: "Black",
        brand: "Hamilton Beach",
        category: "Home & Kitchen",
        rating: 8.8),
    Product(
        id: 84,
        title: "DJI Mavic Air 2 Drone",
        description:
            "An advanced drone with 4K camera, intelligent flight modes, and extended flight time.",
        images: [
          "assets/images/dji_mavicair2_image1.jpg",
          "assets/images/dji_mavicair2_image2.jpeg",
          "assets/images/dji_mavicair2_image3.jpg",
          "assets/images/dji_mavicair2_image4.jpg"
        ],
        priceUSD: 799.00,
        quantity: 3,
        color: "Gray",
        brand: "DJI",
        category: "Electronics",
        rating: 9.3),
    Product(
        id: 85,
        title: "Razer Huntsman Elite Gaming Keyboard",
        description:
            "A premium gaming keyboard with fast opto-mechanical switches and customizable RGB lighting.",
        images: [
          "assets/images/razer_huntsman_image1.jepg",
          "assets/images/razer_huntsman_image2.png",
          "assets/images/razer_huntsman_image3.jpg"
        ],
        priceUSD: 199.99,
        quantity: 9,
        color: "Black",
        brand: "Razer",
        category: "Electronics",
        rating: 9.0),
    Product(
        id: 86,
        title: "Fitbit Versa 3 Smartwatch",
        description:
            "An advanced smartwatch with built-in GPS, heart rate monitoring, and sleep tracking features.",
        images: ["fitbit_versa3_image1.jpg", "fitbit_versa3_image2.jpg"],
        priceUSD: 229.95,
        quantity: 11,
        color: "Midnight",
        brand: "Fitbit",
        category: "Electronics",
        rating: 9.2),
    Product(
        id: 87,
        title: "Anker PowerCore 26800 Portable Charger",
        description:
            "A high-capacity portable charger with multiple USB ports for charging devices on the go.",
        images: ["anker_powercore_image1.jpg", "anker_powercore_image2.jpg"],
        priceUSD: 65.99,
        quantity: 20,
        color: "Black",
        brand: "Anker",
        category: "Electronics",
        rating: 8.9),
    Product(
        id: 88,
        title: "Sony WH-1000XM4 Wireless Noise-Canceling Headphones",
        description:
            "Premium wireless headphones with industry-leading noise cancellation and exceptional sound quality.",
        images: ["sony_wh1000xm4_image1.jpg", "sony_wh1000xm4_image2.jpg"],
        priceUSD: 349.99,
        quantity: 6,
        color: "Silver",
        brand: "Sony",
        category: "Electronics",
        rating: 9.5),
    Product(
        id: 89,
        title: "Cuisinart 14-Cup Food Processor",
        description:
            "A versatile food processor with a large capacity and multiple slicing and shredding options.",
        images: [
          "cuisinart_foodprocessor_image1.jpg",
          "cuisinart_foodprocessor_image2.jpg"
        ],
        priceUSD: 189.99,
        quantity: 8,
        color: "Brushed Stainless",
        brand: "Cuisinart",
        category: "Home & Kitchen",
        rating: 9.1),
    Product(
        id: 90,
        title: "Canon EOS Rebel T7 DSLR Camera",
        description:
            "A beginner-friendly DSLR camera with 24.1 megapixels and Full HD video recording capabilities.",
        images: ["canon_eosrebel_image1.jpg", "canon_eosrebel_image2.jpg"],
        priceUSD: 549.00,
        quantity: 4,
        color: "Black",
        brand: "Canon",
        category: "Electronics",
        rating: 8.7),
    Product(
        id: 91,
        title: "Instant Pot Duo 7-in-1 Electric Pressure Cooker",
        description:
            "A versatile electric pressure cooker with 7 functions for easy and convenient cooking.",
        images: ["instantpot_duo_image1.jpg", "instantpot_duo_image2.jpg"],
        priceUSD: 99.95,
        quantity: 12,
        color: "Silver",
        brand: "Instant Pot",
        category: "Home & Kitchen",
        rating: 9.0),
    Product(
        id: 92,
        title: "Bose QuietComfort 35 II Wireless Headphones",
        description:
            "Premium wireless headphones with world-class noise cancellation and balanced sound.",
        images: [
          "bose_quietcomfort_image1.jpg",
          "bose_quietcomfort_image2.jpg"
        ],
        priceUSD: 299.00,
        quantity: 7,
        color: "Black",
        brand: "Bose",
        category: "Electronics",
        rating: 9.4),
    Product(
        id: 93,
        title: "Ninja Professional Countertop Blender",
        description:
            "A powerful countertop blender with 1100 watts of professional performance power.",
        images: ["ninja_blender_image1.jpg", "ninja_blender_image2.jpg"],
        priceUSD: 89.99,
        quantity: 14,
        color: "Black/Silver",
        brand: "Ninja",
        category: "Home & Kitchen",
        rating: 8.8),
    Product(
        id: 94,
        title: "Apple AirPods Pro",
        description:
            "Wireless earbuds with active noise cancellation, transparency mode, and customizable fit.",
        images: ["apple_airpodspro_image1.jpg", "apple_airpodspro_image2.jpg"],
        priceUSD: 249.00,
        quantity: 6,
        color: "White",
        brand: "Apple",
        category: "Electronics",
        rating: 9.3),
    Product(
        id: 95,
        title: "Crock-Pot 6-Quart Programmable Slow Cooker",
        description:
            "A programmable slow cooker with a 6-quart capacity and digital countdown control.",
        images: [
          "crockpot_slowcooker_image1.jpg",
          "crockpot_slowcooker_image2.jpg"
        ],
        priceUSD: 49.99,
        quantity: 11,
        color: "Stainless Steel",
        brand: "Crock-Pot",
        category: "Home & Kitchen",
        rating: 8.9),
    Product(
        id: 96,
        title: "LG 27-Inch Full HD IPS Monitor",
        description:
            "A high-quality 27-inch monitor with Full HD resolution and IPS panel for accurate colors.",
        images: ["lg_monitor_image1.jpg", "lg_monitor_image2.jpg"],
        priceUSD: 199.99,
        quantity: 8,
        color: "Black",
        brand: "LG",
        category: "Electronics",
        rating: 9.1),
    Product(
        id: 97,
        title: "JBL Charge 4 Portable Bluetooth Speaker",
        description:
            "A portable Bluetooth speaker with powerful sound, long battery life, and water-resistant design.",
        images: ["jbl_charge4_image1.jpg", "jbl_charge4_image2.jpg"],
        priceUSD: 179.95,
        quantity: 9,
        color: "Black",
        brand: "JBL",
        category: "Electronics",
        rating: 9.0),
    Product(
        id: 98,
        title: "Vitamix E310 Explorian Blender",
        description:
            "A high-performance blender with variable speed control and a 48-ounce container.",
        images: ["vitamix_e310_image1.jpg", "vitamix_e310_image2.jpg"],
        priceUSD: 349.95,
        quantity: 5,
        color: "Black",
        brand: "Vitamix",
        category: "Home & Kitchen",
        rating: 9.2),
    Product(
        id: 99,
        title: "Sony PlayStation 5 Console",
        description:
            "The next-generation gaming console with ultra-high-speed SSD, 3D audio, and adaptive triggers.",
        images: [
          "sony_playstation5_image1.jpg",
          "sony_playstation5_image2.jpg"
        ],
        priceUSD: 499.99,
        quantity: 3,
        color: "White",
        brand: "Sony",
        category: "Electronics",
        rating: 9.6),
    Product(
        id: 100,
        title: "Instant Pot Aura Pro Multi-Use Programmable Slow Cooker",
        description:
            "A multi-use programmable slow cooker with a 6-quart capacity and advanced features.",
        images: ["instantpot_aura_image1.jpg", "instantpot_aura_image2.jpg"],
        priceUSD: 129.95,
        quantity: 7,
        color: "Silver",
        brand: "Instant Pot",
        category: "Home & Kitchen",
        rating: 9.3)
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Market"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return ListTile(
            leading: Image.asset(
              product.images[0],
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(product.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Brand: ${product.brand}'),
                Text('Category: ${product.category}'),
                Text('Rating: ${product.rating.toStringAsFixed(1)}'),
              ],
            ),
            trailing: Text('\Rs.${product.pricePKR.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    product: product,
                    addToCart: (cartItem) {
                      setState(() {
                        widget.cartProducts
                            .add(cartItem); // Use widget.cartProducts
                      });
                    },
                  ),
                ),
              );
              // Handle product tap
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey, // Color for unselected icons
        selectedItemColor:
            Theme.of(context).primaryColor, // Color for selected icon
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                Navigator.pushNamed(
                    context, '/'); // Home Screen (ProductListScreen)
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProfileScreen()), // Replace SecondScreen() with your destination screen widget
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SettingsScreen()), // Replace SecondScreen() with your destination screen widget
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CartListScreen()), // Replace SecondScreen() with your destination screen widget
                );
                break;
              default:
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  final Function(CartProduct) addToCart; // Add this line

  ProductDetailScreen(
      {required this.product, required this.addToCart}); // Modify this line
  // ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: product.images.map((image) {
                    return Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Image.asset(
                        image,
                        // width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              product.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(product.description),
            SizedBox(height: 16),
            Text('ID: ${product.id.toString()}'),
            Text('priceUSD: \Rs.${product.pricePKR.toStringAsFixed(2)}'),
            Text('Quantity: ${product.quantity.toString()}'),
            Text('Color: ${product.color}'),
            Text('Brand: ${product.brand}'),
            Text('Category: ${product.category}'),
            Text('Rating: ${product.rating.toStringAsFixed(1)}'),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(016.0),
                  child: Container(
                    width: double.infinity, // Take up full width
                    child: ElevatedButton(
                      onPressed: () {
                        CartProduct cartItem = CartProduct(
                          id: product.id,
                          image: product.images[0],
                          title: product.title,
                          pricePKR: product.pricePKR,
                          quantity: 1,
                        );
                        print(cartItem);
                        addToCart(cartItem);
                        // Call the callback function
                      },
                      child: Text('Add To Cart'),
                    ),
                  ),
                ))
            // Add more properties as needed
          ],
        ),
      ),
    );
  }
}
