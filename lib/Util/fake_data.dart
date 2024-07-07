import 'package:food_delivery_app/Model/food_type.dart';
import 'package:food_delivery_app/Model/user.dart';

class FakeData{
  static User systemUser = User(name: "Nguyen Dat Khuong", account: "zzkhnzgz@gmail.com", password: "1123", imgURL: "https://www.facebook.com/photo/?fbid=1424035127816429&set=pob.100006298659807");
  
//  food type
  static FoodType hotdog = FoodType(name: "Hot Dog", imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/468/original/spicy-hot-dog-hot-dog-transparent-background-png.png", startingPrice: 70);
  static FoodType hamburger = FoodType(name: "Hamburger", imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/566/original/free-tasty-hamburger-on-transparent-background-free-png.png", startingPrice: 80);
  static FoodType pizza = FoodType(name: "Pizza", imgUrl: "https://pngimg.com/d/pizza_PNG43985.png", startingPrice: 90);
  static FoodType steak = FoodType(name: "Steak", imgUrl: "https://static.vecteezy.com/system/resources/previews/021/952/468/original/spicy-hot-dog-hot-dog-transparent-background-png.png", startingPrice: 100);

  static List<FoodType> foodTypeList = [hotdog, hamburger, pizza, steak];

}