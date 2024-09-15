class Nft {
  final String image;
  final String title;
  final String time;
  final String author;
  final String price;
  Nft(
      {required this.title,
      required this.image,
      required this.price,
      required this.author,
      required this.time});
}
List<Nft>nftList=[
  Nft(title: "Bubble Source", image: "assets/nft6.gif", price: "0.65", author: "Stephen", time: "02:30:02"),
  Nft(title: "Cubic Art", image: "assets/ntf4.gif", price: "0.35", author: "Lisa", time: "00:45:12"),
  Nft(title: "Oxion Digi", image: "assets/nft5.gif", price: "0.75", author: "Micheal", time: "10:05:32"),
  Nft(title: "Square Roll", image: "assets/nft3.gif", price: "1.81", author: "Joey", time: "00:05:07"),
  Nft(title: "Water Ring", image: "assets/nft1.gif", price: "0.69", author: "Peter", time: "00:05:07"),
  Nft(title: "Living Water", image: "assets/nft2.gif", price: "0.39", author: "Alex", time: "02:05:07"),

];