class Transaction {
  final String image;
  final String title;
  final String subtitle;
  final String amount;
  final String time;

  Transaction(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.amount,
      required this.time});
}

List<Transaction> transactionList=[
  Transaction(image: "assets/emoji1.png", title: "Esther Howard", subtitle: "Bill Payment", amount: "400", time: "12:00 PM"),
  Transaction(image: "assets/emoji2.png", title: "Brooklyn Simmons", subtitle: "Bill Payment", amount: "150", time: "12:00 PM"),
  Transaction(image: "assets/emoji1.png", title: "Guy Hawkins", subtitle: "Bill Payment", amount: "820", time: "12:30 PM"),
  Transaction(image: "assets/emoji2.png", title: "Katherine Ford", subtitle: "Bill Payment", amount: "120", time: "01:00 PM"),
  Transaction(image: "assets/emoji1.png", title: "Harry", subtitle: "Bill Payment", amount: "630", time: "01:46 PM"),
  Transaction(image: "assets/emoji2.png", title: "Andrew Fills", subtitle: "Bill Payment", amount: "980", time: "02:00 PM"),
];
