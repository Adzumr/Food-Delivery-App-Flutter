import 'food.dart';

class Restaurant {
   String? imageUrl;
  final String? name;
  final String? address;
  final int? rating;
  final List<Food>? menu;

  Restaurant({
    this.imageUrl,
    this.name,
    this.address,
    this.rating,
    this.menu,
  });
}
