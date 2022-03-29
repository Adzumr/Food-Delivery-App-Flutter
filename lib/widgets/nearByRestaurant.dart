import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:sizer/sizer.dart';

class NearByRestaurants extends StatelessWidget {
  const NearByRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> nearByRestaurantsList = [];
    for (var restaurant in restaurants) {
      nearByRestaurantsList.add(
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(
                    restaurant.imageUrl!,
                  ),
                  height: 100.sp,
                  width: 120.sp,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.name!),
                  const SizedBox(height: 5),
                  Text(restaurant.address!),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
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
          const SizedBox(height: 5),
          Column(
            children: nearByRestaurantsList,
          )
        ],
      ),
    );
  }
}
