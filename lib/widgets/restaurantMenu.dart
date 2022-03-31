import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../data/data.dart';
import '../models/food.dart';
import '../screens/restaurantScreen.dart';

class RestaurantMenuWidget extends StatelessWidget {
  const RestaurantMenuWidget({
    Key? key,
    required this.restaurantScreen,
  }) : super(key: key);

  final RestaurantScreen restaurantScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 269.sp,
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        children: List.generate(restaurantScreen.restaurant.menu!.length, (index) {
          Food foodMenu = restaurantScreen.restaurant.menu![index];
          return Card(
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(foodMenu.imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      primary: buttonColor,
                      onPrimary: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      foodMenu.name!,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
