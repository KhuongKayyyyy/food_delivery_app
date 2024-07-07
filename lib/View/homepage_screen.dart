import 'package:flutter/material.dart';
import 'package:food_delivery_app/Component/category_button.dart';
import 'package:food_delivery_app/Component/heading_section.dart';
import 'package:food_delivery_app/Component/primary_searchbar.dart';
import 'package:food_delivery_app/Util/fake_data.dart';
import 'package:food_delivery_app/Model/food_type.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  List<FoodType> foodCategories = FakeData.foodTypeList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40,),
                    HeadingSection(),

                    // Greeting section
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Hey ${FakeData.systemUser.name}, ", style: const TextStyle(fontWeight: FontWeight.w400),),
                        Text(getGreeting(), style: const TextStyle(
                          color: Color(0xFF161C2E),
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    const SizedBox(height: 20,),

                    PrimarySearchbar(textHint: "Search dishes, restaurant"),

                    // Category section
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        const Text("All Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                        const Spacer(),
                        TextButton(
                            onPressed: (){},
                            child: const Row(
                              children: [
                                Text("See All ", style: TextStyle(color: Colors.black),),
                                Icon(Icons.arrow_forward_ios, color: Colors.black, size: 15,)
                              ],
                            )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 10),child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width ,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodCategories.length,
                itemBuilder: (context, index) {
                  FoodType foodType = foodCategories.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: CategoryButton(foodType: foodType,),
                  );
                },
              ),
            ),),
          ],
        )
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
