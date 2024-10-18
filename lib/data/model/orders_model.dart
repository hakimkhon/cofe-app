class OrdersModel {
  final String title;
  final int price;
  final int count;
  final String image;
  final String status;
  final String dateTime;
  OrdersModel({
    required this.title,
    required this.price,
    required this.image,
    required this.count,
    required this.status,
    required this.dateTime,
  });
}
