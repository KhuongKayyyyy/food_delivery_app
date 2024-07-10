import 'package:flutter/material.dart';
import 'package:food_delivery_app/Component/food_button.dart';
import 'package:food_delivery_app/Model/food.dart';
import 'package:food_delivery_app/Model/food_type.dart';
import 'package:food_delivery_app/Model/restaurant.dart';

class FoodByTypeSection extends StatelessWidget {
  final Restaurant restaurant;
  final FoodType foodType;

  FoodByTypeSection({required this.restaurant, required this.foodType});

  @override
  Widget build(BuildContext context) {
    final foods = restaurant.getFoodsByType(foodType);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text("${foodType.name} (${foods.length})"),
        ),
        if (foods.isNotEmpty)
          GridView.builder(
            shrinkWrap: true,
            padding:const EdgeInsets.only(top: 10),
            physics:const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: foods.length,
            itemBuilder: (context, index) {
              Food food = foods[index];
              return FoodButton(food: food); // No fixed height here
            },
          )
        else
          Text("No foods available"),
      ],
    );
  }
}
