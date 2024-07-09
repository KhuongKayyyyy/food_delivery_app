import 'package:food_delivery_app/Model/food_type.dart';
import 'package:food_delivery_app/Model/restaurant.dart';
import 'package:food_delivery_app/Model/user.dart';

class FakeData{
  static User systemUser = User(name: "Nguyen Dat Khuong", account: "zzkhnzgz@gmail.com", password: "1123", imgURL: "https://www.facebook.com/photo/?fbid=1424035127816429&set=pob.100006298659807");
  
//  food type
  static FoodType hotdog = FoodType(name: "Hot Dog", imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/468/original/spicy-hot-dog-hot-dog-transparent-background-png.png", startingPrice: 70);
  static FoodType hamburger = FoodType(name: "Hamburger", imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png", startingPrice: 80);
  static FoodType pizza = FoodType(name: "Pizza", imgUrl: "https://pngimg.com/d/pizza_PNG43985.png", startingPrice: 90);
  static FoodType steak = FoodType(name: "Steak", imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/468/original/spicy-hot-dog-hot-dog-transparent-background-png.png", startingPrice: 100);

  static List<FoodType> foodTypeList = [hotdog, hamburger, pizza, steak];
  
//  restaurant
  static Restaurant restaurant1 = Restaurant(name: "Rose Garden Restaurant", imgURL: "https://khni.kerry.com/wp-content/uploads/2019/02/Restaurant-meal.jpg", shippingFee:"Free", description: "Great restaurant", rating: 4.7, famousDishes: foodTypeList);
  static Restaurant restaurant2 = Restaurant(name: "Great Paramyd Restaurant", imgURL: "https://media.istockphoto.com/id/1457979959/photo/snack-junk-fast-food-on-table-in-restaurant-soup-sauce-ornament-grill-hamburger-french-fries.webp?b=1&s=170667a&w=0&k=20&c=A_MdmsSdkTspk9Mum_bDVB2ko0RKoyjB7ZXQUnSOHl0=", shippingFee:"Free", description: "Great restaurant", rating: 5.0, famousDishes: foodTypeList);
  static Restaurant restaurant3 = Restaurant(name: "Zone 50 Restaurant", imgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDIfPepr8VA0Cx4bZiSmVdp5YSlPUcZYuaOuOl-CL7yeQZ-Tq3AwBXoYGcCQbs5zGmh6M&usqp=CAU", shippingFee:"Free", description: "Great restaurant", rating: 4.5,famousDishes: foodTypeList);
  static Restaurant restaurant4 = Restaurant(name: "Compston House Restaurant", imgURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8eZnA4-Q4onDD-MkvebayEDO_Yhjfn4VydLHA6G6B4qw11pEegDplNDxczHnQaMR1FxU&usqp=CAU", shippingFee:"Free", description: "Great restaurant", rating: 4.9, famousDishes: foodTypeList);

  static List<Restaurant> restaurantList = [restaurant1,restaurant2,restaurant3, restaurant4];
}