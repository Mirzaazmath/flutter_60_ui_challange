class ProductModel{
  final String image;
  bool isFav;
  final String title;
  final String subTitle;
  final String soldQty;
  final int price;
  final double salesPercent;
  ProductModel({required this.title,required this.price,required this.subTitle,required this.salesPercent,required this.soldQty,required this.image,this.isFav=false});
}
List<ProductModel>productList=[
  ProductModel(title: "Purple Belt", price: 700, subTitle: "Classic", salesPercent: 0.3, soldQty: "2k", image: "assets/watch1.png",isFav: true),
  ProductModel(title: "Gery Fist", price: 800, subTitle: "Classic", salesPercent: 0.1, soldQty: "2.2k", image: "assets/watch2.png"),
  ProductModel(title: "Brown Hound", price: 900, subTitle: "Classic", salesPercent: 0.4, soldQty: "3k", image: "assets/watch3.png",isFav: true),
  ProductModel(title: "Pink Salon", price: 500, subTitle: "Classic", salesPercent: 0.9, soldQty: "1.8k", image: "assets/watch4.png"),
  ProductModel(title: "Classic Black", price: 600, subTitle: "Classic", salesPercent: 0.2, soldQty: "1.4k", image: "assets/watch5.png"),
  ProductModel(title: "Deep Blue", price: 300, subTitle: "Classic", salesPercent: 0.6, soldQty: "2.3k", image: "assets/watch6.png"),
  ProductModel(title: "Green Watch", price: 900, subTitle: "Classic", salesPercent: 0.8, soldQty: "2.7k", image: "assets/watch7.png"),
  ProductModel(title: "White Perl", price: 700, subTitle: "Classic", salesPercent: 0.5, soldQty: "3.1k", image: "assets/watch8.png"),
];