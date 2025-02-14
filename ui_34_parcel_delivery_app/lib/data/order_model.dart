class OrderModel {
  final String orderId;
  final String status;
  OrderModel({required this.status, required this.orderId});
}
List<OrderModel>orderList=[
  OrderModel(status: "On the way", orderId: "A425HYD8"),
  OrderModel(status: "Completed", orderId: "A15KYJ1"),
  OrderModel(status: "Completed", orderId: "A095QWE2"),
  OrderModel(status: "Completed", orderId: "A925HYJ4"),
];

class OrderStatus {
  final String date;
  final String status;
  OrderStatus({required this.status, required this.date});
}
List<OrderStatus>orderStatusList=[
  OrderStatus(status: "Received", date: "02 Mar 2025"),
  OrderStatus(status: "Arrived at the sorting center", date: "03 Mar 2025"),
  OrderStatus(status: "Sent to delivery partner", date: "07 Mar 2025"),
  OrderStatus(status: "Out for delivery", date: "09 Mar 2025"),
];
