class FoodType {
  final String name;
  final String imgUrl;
  final double startingPrice;

  FoodType({
    required this.name,
    required this.imgUrl,
    required this.startingPrice,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is FoodType &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              imgUrl == other.imgUrl &&
              startingPrice == other.startingPrice;

  @override
  int get hashCode => name.hashCode ^ imgUrl.hashCode ^ startingPrice.hashCode;
}
