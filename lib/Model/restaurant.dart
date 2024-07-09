import 'food_type.dart';

class Restaurant {
  final String name;
  final String imgURL;
  final String shippingFee;
  final String description;
  final double rating;
  final List<FoodType> famousDishes;

  Restaurant({
    required this.name,
    required this.imgURL,
    required this.shippingFee,
    required this.description,
    required this.rating,
    required this.famousDishes,
  });

  String get getFamousDishes {
    return famousDishes.map((foodType) => foodType.name).join(' - ');
  }
}
