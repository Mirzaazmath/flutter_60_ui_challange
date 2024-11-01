class WeatherWeekData {
  final String image;
  final String temperature;
  final String temperature2;
  final String title;
  final String day;

  WeatherWeekData(
      {required this.image,
      required this.temperature,
      required this.temperature2,
      required this.title,
      required this.day});
}

List<WeatherWeekData>weatherWeekData=[
  WeatherWeekData(image: "assets/blackcloud.png", temperature: "17", temperature2: "11", title: "Cloudy", day: "Mon"),
  WeatherWeekData(image: "assets/thunderbold.webp", temperature: "20", temperature2: "20", title: "Thunder", day: "Tue"),
  WeatherWeekData(image: "assets/thundercloud.png", temperature: "25", temperature2: "19", title: "Storm", day: "Wed"),
  WeatherWeekData(image: "assets/rain.png", temperature: "21", temperature2: "18", title: "Rainy", day: "Thu"),
  WeatherWeekData(image: "assets/wind.png", temperature: "22", temperature2: "20", title: "Windy", day: "Fri"),
  WeatherWeekData(image: "assets/wind.png", temperature: "21", temperature2: "18", title: "Windy", day: "Sat"),
  WeatherWeekData(image: "assets/thunderbold.webp", temperature: "20", temperature2: "17", title: "Thunder", day: "Sun"),

];




