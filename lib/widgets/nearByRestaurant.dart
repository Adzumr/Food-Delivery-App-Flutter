import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:food_delivery_app_flutter/models/restaurant.dart';
import 'package:food_delivery_app_flutter/screens/restaurantScreen.dart';
import 'package:sizer/sizer.dart';

import 'starRating.dart';

class NearByRestaurants extends StatelessWidget {
  const NearByRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> nearByRestaurantsList = [];
    for (var restaurant in restaurants) {
      nearByRestaurantsList.add(
        Card(
          margin: const EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: OpenContainer(
              openShape: Border.all(
                width: 2,
                color: buttonColor,
              ),
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: const Duration(milliseconds: 700),
              closedBuilder: (context, closedWidget) {
                return RestaurantTile(restaurant: restaurant);
              },
              openBuilder: (context, openWidget) {
                return RestaurantScreen(restaurant: restaurant);
              }),
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Near By Restaurants",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: nearByRestaurantsList,
          )
        ],
      ),
    );
  }
}

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Hero(
            tag: restaurant.imageUrl!,
            child: Image(
              image: AssetImage(
                restaurant.imageUrl!,
              ),
              height: 100.sp,
              width: 120.sp,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant.name!,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  restaurant.address!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 5),
                const StarRating(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
