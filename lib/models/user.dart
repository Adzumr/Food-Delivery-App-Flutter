import 'order.dart';

class User {
  final String? name;
  final String? phoneNumber;
  final String? address;
  final List<Order>? orders;
  final List<Order>? cart;

  User({
    this.phoneNumber,
    this.address,
    this.name,
    this.orders,
    this.cart,
  });
}
