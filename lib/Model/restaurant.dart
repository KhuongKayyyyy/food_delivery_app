import 'food_type.dart';
import 'food.dart';

class Restaurant {
  final String name;
  final List<String> imgURL;
  final String shippingFee;
  final String description;
  final double rating;
  final List<FoodType> famousDishes;
  final List<Food> menu;

  Restaurant({
    required this.name,
    required this.imgURL,
    required this.shippingFee,
    required this.description,
    required this.rating,
    required this.famousDishes,
    required this.menu,
  });

  String get getFamousDishes {
    return famousDishes.map((foodType) => foodType.name).join(' - ');
  }

  List<Food> getFoodsByType(FoodType foodType) {
    return menu.where((food) => food.foodType == foodType).toList();
  }
}
