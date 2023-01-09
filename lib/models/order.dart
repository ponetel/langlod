import 'package:langlod/models/cartype.dart';
import 'package:langlod/models/shops.dart';

class Order {
  final Shops shops;
  final CarType cartype;
  final String date;
  final int quantity;

  Order({
    required this.date,
    required this.shops,
    required this.cartype,
    required this.quantity,
  });
}
