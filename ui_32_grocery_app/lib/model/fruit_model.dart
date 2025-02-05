class FruitModel{
  final String name;
  final int cal;
  final double price;
  final String image;
  FruitModel({required this.name, required this.cal, required this.price, required this.image});
}
List<FruitModel>fruitList=[
  FruitModel(name: "Apple", cal: 55, price: 10.45, image: "assets/images/apple.png"),
  FruitModel(name: "Orange", cal: 75, price: 14.75, image: "assets/images/orange.png"),
  FruitModel(name: "Melon", cal: 156, price: 25.11, image: "assets/images/melon.png"),
  FruitModel(name: "Dragon", cal: 116, price: 18.50, image: "assets/images/dragon.png"),
  FruitModel(name: "PineApple", cal: 99, price: 22.31, image: "assets/images/pineapple.png"),
  FruitModel(name: "Kiwi", cal: 63, price: 8.60, image: "assets/images/kiwi.png"),
  FruitModel(name: "Strawberry", cal: 56, price: 10.35, image: "assets/images/strawberry.png"),
  FruitModel(name: "Goava", cal: 34, price: 10.55, image: "assets/images/goava.png")

];