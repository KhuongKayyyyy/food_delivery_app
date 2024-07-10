import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food.dart';

class FoodButton extends StatelessWidget {
  final Food food;

  FoodButton({required this.food});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(3, 3), // Only right and bottom shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: CachedNetworkImage(
                  imageUrl: food.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name, style:const TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                    Text(food.restaurant.name, style:const TextStyle(fontSize: 12),),
                    Row(
                      children: [
                        Text("\$ ${food.price}",style: const TextStyle(fontWeight: FontWeight.bold),),
                        const Spacer(),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add, size: 20,color: Colors.white,),
                            onPressed: () {
                              print("Add to cart");
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
