import 'package:food_delivery_app/Model/food.dart';
import 'package:food_delivery_app/Model/food_type.dart';
import 'package:food_delivery_app/Model/restaurant.dart';
import 'package:food_delivery_app/Model/user.dart';

class FakeData {
  static User systemUser = User(
      name: "Nguyen Dat Khuong",
      account: "zzkhnzgz@gmail.com",
      password: "1123",
      imgURL: "https://www.facebook.com/photo/?fbid=1424035127816429&set=pob.100006298659807"
  );

  static FoodType hotdog = FoodType(
      name: "Hot Dog",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/468/original/spicy-hot-dog-hot-dog-transparent-background-png.png",
      startingPrice: 70.0
  );

  static FoodType hamburger = FoodType(
      name: "Hamburger",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      startingPrice: 80.0
  );

  static FoodType pizza = FoodType(
      name: "Pizza",
      imgUrl: "https://pngimg.com/d/pizza_PNG43985.png",
      startingPrice: 90.0
  );

  static FoodType steak = FoodType(
      name: "Steak",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/468/original/spicy-hot-dog-hot-dog-transparent-background-png.png",
      startingPrice: 100.0
  );

  static List<FoodType> foodTypeList = [hotdog, hamburger, pizza, steak];

  static List<String> restaurantImage = [
    "https://khni.kerry.com/wp-content/uploads/2019/02/Restaurant-meal.jpg",
    "https://media.istockphoto.com/id/1457979959/photo/snack-junk-fast-food-on-table-in-restaurant-soup-sauce-ornament-grill-hamburger-french-fries.webp?b=1&s=170667a&w=0&k=20&c=A_MdmsSdkTspk9Mum_bDVB2ko0RKoyjB7ZXQUnSOHl0=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDIfPepr8VA0Cx4bZiSmVdp5YSlPUcZYuaOuOl-CL7yeQZ-Tq3AwBXoYGcCQbs5zGmh6M&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8eZnA4-Q4onDD-MkvebayEDO_Yhjfn4VydLHA6G6B4qw11pEegDplNDxczHnQaMR1FxU&usqp=CAU"
  ];

  static Restaurant restaurant1 = Restaurant(
      name: "Rose Garden Restaurant",
      imgURL: restaurantImage,
      shippingFee: "Free",
      description: "Delicious Bites Restaurant offers a wide range of culinary delights, from hearty breakfasts to exquisite dinners. Our chefs prepare each dish with fresh, locally sourced ingredients, ensuring a delightful dining experience every time. Come and enjoy our cozy ambiance and friendly service!",
      rating: 4.7,
      famousDishes: foodTypeList,
      menu: []
  );

  static Restaurant restaurant2 = Restaurant(
      name: "Great Paramyd Restaurant",
      imgURL: restaurantImage,
      shippingFee: "Free",
      description: "Delicious Bites Restaurant offers a wide range of culinary delights, from hearty breakfasts to exquisite dinners. Our chefs prepare each dish with fresh, locally sourced ingredients, ensuring a delightful dining experience every time. Come and enjoy our cozy ambiance and friendly service!",
      rating: 5.0,
      famousDishes: foodTypeList,
      menu: []
  );

  static Restaurant restaurant3 = Restaurant(
      name: "Zone 50 Restaurant",
      imgURL: restaurantImage,
      shippingFee: "Free",
      description: "Delicious Bites Restaurant offers a wide range of culinary delights, from hearty breakfasts to exquisite dinners. Our chefs prepare each dish with fresh, locally sourced ingredients, ensuring a delightful dining experience every time. Come and enjoy our cozy ambiance and friendly service!",
      rating: 4.5,
      famousDishes: foodTypeList,
      menu: []
  );

  static Restaurant restaurant4 = Restaurant(
      name: "Compston House Restaurant",
      imgURL: restaurantImage,
      shippingFee: "Free",
      description: "Delicious Bites Restaurant offers a wide range of culinary delights, from hearty breakfasts to exquisite dinners. Our chefs prepare each dish with fresh, locally sourced ingredients, ensuring a delightful dining experience every time. Come and enjoy our cozy ambiance and friendly service!",
      rating: 4.9,
      famousDishes: foodTypeList,
      menu: []
  );

  static List<Restaurant> restaurantList = [restaurant1, restaurant2, restaurant3, restaurant4];

  static Food calzonePizza = Food(
      name: "Pizza Calzone European",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      price: 40.0,
      restaurant: restaurant1,
      foodType: pizza,
      size: ["M", "L"]
  );

  static Food buffaloPizza = Food(
      name: "Pizza Buffalo",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      price: 50.0,
      restaurant: restaurant1,
      foodType: pizza,
      size: ["L"]
  );

  static Food smokingBurger = Food(
      name: "Smoking Burger",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      price: 20.0,
      restaurant: restaurant1,
      foodType: hamburger,
      size: ["X", "M", "L"]
  );

  static Food bistro = Food(
      name: "Bistro Burger",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      price: 25.0,
      restaurant: restaurant1,
      foodType: hamburger,
      size: ["X", "M", "L"]
  );

  static Food bullseyeBurger = Food(
      name: "Bullseye Burger",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      price: 15.0,
      restaurant: restaurant1,
      foodType: hamburger,
      size: ["X", "M", "L"]
  );

  static Food rockinBurger = Food(
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      name: "Rockin Burger",
      price: 30.0,
      restaurant: restaurant1,
      foodType: hamburger,
      size: ["X", "M", "L"]
  );

  static Food fergusonBurger = Food(
      name: "Ferguson Burger",
      imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png",
      price: 100.0,
      restaurant: restaurant1,
      foodType: hamburger,
      size: ["X", "M", "L"]
  );

  static List<Food> foodList = [calzonePizza, buffaloPizza, smokingBurger, bistro, bullseyeBurger, rockinBurger, fergusonBurger];

  static void populateMenus() {
    restaurant1.menu.addAll(foodList);
    restaurant2.menu.addAll(foodList);
    restaurant3.menu.addAll(foodList);
    restaurant4.menu.addAll(foodList);
  }

  static void init() {
    populateMenus();
  }
}