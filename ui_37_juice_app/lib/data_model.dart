import 'package:flutter/material.dart';

class Category {
  final String icon;
  final String title;
  Category({required this.title, required this.icon});
}

List<Category> categoryList = [
  Category(title: "Avocado", icon: "🥑"),
  Category(title: "Mango", icon: "🥭"),
  Category(title: "Apple", icon: "🍎"),
  Category(title: "Grapes", icon: "🍇"),
  Category(title: "Banana", icon: "🍌"),
];

class Item {
  final String image;
  final String title;
  final String price;
  final Color color;

  Item({
    required this.image,
    required this.title,
    required this.price,
    required this.color,
  });
}

List<Item> listItem = [
  Item(
    image: "assets/apple.jpg",
    title: "Apple Juice",
    price: "13.99",
    color: Color(0xfff58b95),
  ),
  Item(
    image: "assets/lemon.jpg",
    title: "Lemon Juice",
    price: "12.65",
    color: Color(0xfffdda2b),
  ),
  Item(
    image: "assets/blueberry.jpg",
    title: "BlueBerry Juice",
    price: "15.10",
    color: Color(0xffefd0ef),
  ),
  Item(
    image: "assets/pomogranate.jpg",
    title: "Pomegranate Juice",
    price: "14.23",
    color: Color(0xffff9c96),
  ),
];
