class FlightData {
  final String flightName;
  final String arrivalTime;
  final String departureTime;
  final String arrivalDate;
  final String departureDate;
  final String price;
  FlightData(
      {required this.price,
      required this.arrivalDate,
      required this.arrivalTime,
      required this.departureDate,
      required this.departureTime,
      required this.flightName});
}
List<FlightData>flightDataList=[
  FlightData(price: "540", arrivalDate: "7 Aug", arrivalTime: "10:15 PM", departureDate: "7 Aug", departureTime: "11:20 PM", flightName: "Swiss\nExpress"),
  FlightData(price: "570", arrivalDate: "7 Aug", arrivalTime: "12:50 PM", departureDate: "7 Aug", departureTime: "02:00 PM", flightName: "Swiss\nExpress"),
  FlightData(price: "620", arrivalDate: "7 Aug", arrivalTime: "05:15 PM", departureDate: "7 Aug", departureTime: "07:20 PM", flightName: "Poland\nAirway"),
  FlightData(price: "840", arrivalDate: "7 Aug", arrivalTime: "09:15 PM", departureDate: "7 Aug", departureTime: "10:20 PM", flightName: "American\nExpress"),
  FlightData(price: "520", arrivalDate: "7 Aug", arrivalTime: "10:15 PM", departureDate: "8 Aug", departureTime: "12:20 AM", flightName: "Emirates"),
  FlightData(price: "510", arrivalDate: "7 Aug", arrivalTime: "11:15 PM", departureDate: "8 Aug", departureTime: "04:20 AM", flightName: "Swiss\nExpress"),
];
