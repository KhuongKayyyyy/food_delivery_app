import 'food_type.dart';
import 'restaurant.dart';

class Food {
  final String name;
  final String imgUrl;
  final double price;
  final Restaurant restaurant;
  final FoodType foodType;
  final List<String> size;

  Food({
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.restaurant,
    required this.foodType,
    required this.size,
  });
}
