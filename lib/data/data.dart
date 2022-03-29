import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app_flutter/models/food.dart';

import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';
// Color

Color backGroundColor = const Color.fromARGB(255, 97, 97, 97);
Color primaryColor = const Color(0xFF151D3B);
Color buttonColor = const Color(0xFFD82148);
Color blackColor = const Color(0xFF000000);
Color whiteColor = const Color(0xFFFFFFFF);
// Food
final _burrito =
    Food(imageUrl: 'images/burrito.jpg', name: 'Burrito', price: 8.99);
final _steak = Food(imageUrl: 'images/steak.jpg', name: 'Steak', price: 17.99);
final _pasta = Food(imageUrl: 'images/pasta.jpg', name: 'Pasta', price: 14.99);
final _ramen = Food(imageUrl: 'images/ramen.jpg', name: 'Ramen', price: 13.99);
final _pancakes =
    Food(imageUrl: 'images/pancakes.jpg', name: 'Pancakes', price: 9.99);
final _burger =
    Food(imageUrl: 'images/burger.jpg', name: 'Burger', price: 14.99);
final _pizza = Food(imageUrl: 'images/pizza.jpg', name: 'Pizza', price: 11.99);
final _salmon =
    Food(imageUrl: 'images/salmon.jpg', name: 'Salmon Salad', price: 12.99);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'images/restaurant0.jpg',
  name: 'Cafe Cimino',
  address: '616 Main St, Sutton, WV 26601',
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = Restaurant(
  imageUrl: 'images/restaurant1.jpg',
  name: 'The Press Room',
  address: '129 W German St, Shepherdstown, WV 25443',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  imageUrl: 'images/restaurant2.jpg',
  name: 'Hillbilly Hot Dogs',
  address: '6951 Ohio River Rd, Lesage, WV 25537',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = Restaurant(
  imageUrl: 'images/restaurant3.jpg',
  name: 'The Hütte Restaurant',
  address: 'Main St, Helvetia, WV 2622',
  rating: 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = Restaurant(
  imageUrl: 'images/restaurant4.jpg',
  name: 'Coleman\'s Fish Market',
  address: '2226 Market St, Wheeling, WV 26003',
  rating: 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Umar Abdulaziz',
  orders: [
    Order(
      date: 'Mar 10, 2022',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Mar 8, 2022',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Mar 5, 2022',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Feb 2, 2021',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Feb 1, 2022',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Jan 11, 2022',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Dec 10, 2021',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 09, 2021',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 07, 2021',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 06, 2021',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
