import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/food_type.dart';

class CategoryButton extends StatefulWidget {
  final FoodType foodType;
  CategoryButton({required this.foodType});

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your onTap functionality here
      },
      child: Container(
        height: 170,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(3, 3), // Only right and bottom shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                width: 120,
                height: 100, // Fixed height to prevent overflow
                imageUrl: widget.foodType.imgUrl,
                fit: BoxFit.cover, // Adjust the image to fit within the given dimensions
              ),
              const Spacer(),
              Text(
                widget.foodType.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.background,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Starting ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$${widget.foodType.startingPrice}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
