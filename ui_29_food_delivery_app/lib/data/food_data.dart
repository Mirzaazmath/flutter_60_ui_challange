class FoodData {
  final String title;
  final String image;
  final double price;
  final double rating;
  final int duration;

  FoodData(
      {required this.title,
      required this.image,
      required this.price,
      required this.rating,
      required this.duration});
}
List<FoodData>foodList=[
  FoodData(title: "Dry Fruit PanCake", image: 'assets/item1.jpg', price: 1.2, rating: 4.5, duration: 60),
  FoodData(title: "Coco Sandwich", image: 'assets/item2.jpeg', price: 0.67, rating: 4.1, duration: 20),
  FoodData(title: "Masala Samosa", image: 'assets/item3.jpg', price: 0.25, rating: 4.6, duration: 10),
  FoodData(title: "Fried Onion Lotus", image: 'assets/item4.jpg', price: 1.0, rating: 3.9, duration: 30),
  FoodData(title: "Hot Dog", image: 'assets/item5.jpg', price: 0.41, rating: 4.0, duration: 25),
];

