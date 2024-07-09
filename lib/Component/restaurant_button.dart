import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Model/restaurant.dart';
class RestaurantButton extends StatelessWidget{
  Restaurant restaurant;
  RestaurantButton({super.key, required this.restaurant});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child:
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: restaurant.imgURL,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text(
          restaurant.name,
          style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          restaurant.getFamousDishes,
          style: TextStyle(
              color: Theme.of(context).colorScheme.surface
          ),
        ),
        const SizedBox(height: 5,),
        Row(
          children: [
            Icon(
              Icons.star_border_outlined,
              color: Theme.of(context).primaryColor,
            ),
            Text(
              "${restaurant.rating}",
              style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(width: 20,),

            Icon(
              Icons.local_shipping_outlined,
              color: Theme.of(context).primaryColor,
            ),
            Text(
                restaurant.shippingFee,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.background
              ),
            ),
            const SizedBox(width: 20,),

            Icon(
              Icons.timer_outlined,
              color: Theme.of(context).primaryColor,
            ),
            Text(
                "20 min",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.background
              ),
            ),
            const SizedBox(width: 20,),

          ],
        )
      ],
    );
  }
}