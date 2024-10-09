import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> products = [
  Product(
    title: 'Headphones',
    description: "lorem dolor sit amet , consector adipiscing alit",
    image: "images/headphone1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [Colors.black, Colors.blue, Colors.orange],
    category: "Electroncics",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'Shoes',
    description: "Size 6 , 7 , 8 , 9 , 10",
    image: "images/shoos1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [Colors.black, Colors.blue, Colors.white],
    category: "Smooth",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'Combo dress',
    description: "All Size Avalable",
    image: "images/girls combo3.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [Colors.black, Colors.blue, Colors.pink],
    category: "Cottan",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'Shirt',
    description: "All Size Avalable",
    image: "images/shirt1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.white,
    ],
    category: "lycra",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: ' Block Phant',
    description: "All Size Avalable",
    image: "images/phant1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Cottan",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
];
final List<Product> all = [
  Product(
    title: 'Headphones',
    description: "lorem dolor sit amet , consector adipiscing alit",
    image: "images/headphone1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [Colors.black, Colors.blue, Colors.orange],
    category: "Electroncics",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'Shoes',
    description: "Size 6 , 7 , 8 , 9 , 10",
    image: "images/shoos1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [Colors.black, Colors.blue, Colors.white],
    category: "Smooth",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'Combo dress',
    description: "All Size Avalable",
    image: "images/girls combo3.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [Colors.black, Colors.blue, Colors.pink],
    category: "Cottan",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'Shirt',
    description: "All Size Avalable",
    image: "images/shirt1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.white,
    ],
    category: "lycra",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: ' Block Phant',
    description: "All Size Avalable",
    image: "images/phant1.jpg",
    price: 200,
    seller: "Tariqual isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.red,
    ],
    category: "Cottan",
    review: "320 Reviews",
    rate: 4.8,
    quantity: 1,
  ),
];
