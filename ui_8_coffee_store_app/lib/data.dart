class Coffee{
  final String image;
  final int price;
  final String title;
  final String description;
  Coffee( {required this.title,required this.image, required this.price, required this.description,});
}
List<Coffee>coffeeList=[
  Coffee(title: "Caramel Frappuccino Blended", image: "assets/coffee1.png", price: 11, description: "Caramel syrup meets coffee, milk and ice for a rendezvous in the blender, while whipped cream and buttery caramel sauce layer the love on top. To change things up, try it affogato-style with a hot espresso shot poured right over the top."),
  Coffee(title: "Mocha Cookie Crumble Frappuccino", image: "assets/coffee2.png", price: 13, description: "Frappuccino® Roast coffee, mocha sauce and Frappuccino® chips blended with milk and ice, layered on top of whipped cream and chocolate cookie crumble and topped with vanilla whipped cream, mocha drizzle and even more chocolate cookie crumble. Each sip is as good as the last . . . all the way to the end."),
  Coffee(title: "Java Chip Frappuccino Blended Beverage", image: "assets/coffee3.png", price: 10, description: "We blend mocha sauce and Frappuccino® chips with coffee, milk and ice, then top it off with whipped cream and a mocha drizzle to bring you endless java joy."),
  Coffee(title: "Strawberry Crème Frappuccino", image: "assets/coffee4.png", price: 12, description: "Summer's favorite berry is the star of this delicious Frappuccino® Blended Beverage—a blend of ice, milk and strawberry puree layered on top of a splash of strawberry puree and finished with vanilla whipped cream."),
];