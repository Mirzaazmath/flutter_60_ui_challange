class Item {
  final String title;
  final String image;
  final String description;
  final String sortDescription;
  final String gram;
  final String gramString;
  Item(
      {required this.title,
      required this.image,
      required this.description,
      required this.gram,
      required this.gramString,
      required this.sortDescription});
}

List<Item> items = [
  Item(
    title: "SYNTH-6",
    image: "assets/powder.webp",
    description:
        "SYNTHA-6 is an Ultra-Premium protein powder with 22g protein per Serving and is our best-tasting protein on the market",
    gram: '22g',
    gramString: 'PROTEIN PER SCOOP',
    sortDescription: 'Ultra-Premium Protein Powder',
  ),
  Item(
    title: "SYNTH-6",
    image: "assets/packet.webp",
    description:
        "SYNTHA-6 is an Ultra-Premium protein powder with 25g protein per Serving and is our best-tasting protein on the market",
    gram: '25g',
    gramString: 'PROTEIN PER SCOOP',
    sortDescription: 'Ultra-Premium Protein Matrix',
  ),
  Item(
    title: "Proathlix",
    image: "assets/bar.png",
    description:
        "Proathlix  Protein Bar with 33g protein per Serving and is our best-tasting protein on the market",
    gram: '33g',
    gramString: 'PROTEIN PER BAR',
    sortDescription: 'BAR WITH BENEFITS',
  ),
  Item(
    title: "Pro-SHAKE",
    image: "assets/shaker.png",
    description:
        "Pro-SHAKE is an Ultra-Premium protein Shaker with durability and best design with UX.",
    gram: '750ml',
    gramString: '750 ML OF PROTEIN ',
    sortDescription: 'Good Quality Shaker',
  ),
];
