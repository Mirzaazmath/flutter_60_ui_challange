class Plant {
  final String image;
  final String title;
  final String subtitle;
  final int rating;

  Plant({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
}
List<Plant>plantList=[
  Plant(image: "assets/plant1.png", title: "Peace Lily", subtitle: "Beautiful and Calm", rating: 5),
  Plant(image: "assets/plant2.webp", title: "C.Evergreen", subtitle: "Lucky and Kind", rating: 4),
  Plant(image: "assets/plant3.png", title: "C.Banyan", subtitle: "Good and Simple", rating: 5),
  Plant(image: "assets/plant4.png", title: "Paradise", subtitle: "Heavens and Okay", rating: 3),
  Plant(image: "assets/plant5.png", title: "Fiddly Leaf", subtitle: "Tall and Nice", rating: 4),
  Plant(image: "assets/plant6.png", title: "Ficus", subtitle: "Adorable and Positive", rating: 5),
  Plant(image: "assets/plant7.png", title: "Peperomia", subtitle: "Natural and Vibe", rating: 4),
  Plant(image: "assets/plant8.png", title: "Star Cactus", subtitle: "Beautiful and Calm", rating: 5),
];