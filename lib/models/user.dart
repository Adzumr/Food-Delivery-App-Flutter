import 'order.dart';

class User {
  final String? name;
  final String? emailAdress;
  final String? phoneNumber;
  final String? address;
  final List<Order>? orders;
  final List<Order>? cart;

  User({
    this.emailAdress,
    this.phoneNumber,
    this.address,
    this.name,
    this.orders,
    this.cart,
  });
}
