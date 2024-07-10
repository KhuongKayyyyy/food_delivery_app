import 'package:flutter/material.dart';
import 'package:food_delivery_app/Component/category_button.dart';
import 'package:food_delivery_app/Component/heading_section.dart';
import 'package:food_delivery_app/Component/primary_searchbar.dart';
import 'package:food_delivery_app/Component/restaurant_button.dart';
import 'package:food_delivery_app/Util/fake_data.dart';
import 'package:food_delivery_app/Model/food_type.dart';
import 'package:food_delivery_app/Model/restaurant.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  List<FoodType> foodCategories = FakeData.foodTypeList;
  List<Restaurant> restaurantList = FakeData.restaurantList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading section
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  HeadingSection(),
                  // Greeting section
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Hey ${FakeData.systemUser.name}, ",
                        style: const TextStyle(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        getGreeting(),
                        style: const TextStyle(
                          color: Color(0xFF161C2E),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  PrimarySearchbar(textHint: "Search dishes, restaurant"),
                  // Category section
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Text(
                        "All Categories",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              "See All ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Food category list
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodCategories.length,
                  itemBuilder: (context, index) {
                    FoodType foodType = foodCategories.elementAt(index);
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: CategoryButton(foodType: foodType),
                    );
                  },
                ),
              ),
            ),
            // Restaurant list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Open Restaurants",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text(
                              "See All ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: restaurantList.length,
                    itemBuilder: (context, index) {
                      Restaurant restaurant = restaurantList.elementAt(index);
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: RestaurantButton(restaurant: restaurant),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning!';
    } else if (hour < 17) {
      return 'Good Afternoon!';
    } else {
      return 'Good Evening!';
    }
  }
}
