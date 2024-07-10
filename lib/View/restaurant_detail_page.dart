import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Component/filter_button.dart';
import 'package:food_delivery_app/Component/food_by_type_section.dart';
import 'package:food_delivery_app/Model/food_type.dart';
import 'package:food_delivery_app/Model/restaurant.dart';
import 'package:food_delivery_app/Util/fake_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantDetailPage extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantDetailPage({Key? key, required this.restaurant}) : super(key: key);

  @override
  _RestaurantDetailPageState createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.restaurant.imgURL.length,
                    itemBuilder: (context, index) {
                      String imgURL = widget.restaurant.imgURL.elementAt(index);
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: CachedNetworkImage(
                          imageUrl: imgURL,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new_rounded),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.more_horiz_rounded),
                          onPressed: () {
                            // Handle more options
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: widget.restaurant.imgURL.length,
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Theme.of(context).primaryColor,
                        dotColor: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        "${widget.restaurant.rating}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.local_shipping_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        widget.restaurant.shippingFee,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.timer_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        "20 min",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.restaurant.name,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.restaurant.description,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.restaurant.famousDishes.length,
                      itemBuilder: (context, index) {
                        FoodType foodType = widget.restaurant.famousDishes[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: FilterButton(filterType: foodType.name),
                        );
                      },
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: widget.restaurant.famousDishes.map((foodType) {
                        if (widget.restaurant.getFoodsByType(foodType).isNotEmpty) {
                          return FoodByTypeSection(
                            restaurant: widget.restaurant,
                            foodType: foodType,
                          );
                        } else {
                          return SizedBox.shrink();
                        }
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
