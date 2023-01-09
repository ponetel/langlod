import 'package:langlod/models/cartype.dart';

class Shops {
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<CarType> menu;

  Shops({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.rating,
    required this.menu,
  });
}
