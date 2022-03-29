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
        Card(
          margin: const EdgeInsets.symmetric(vertical: 10),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: whiteColor),
          ),
          elevation: 2,
          child: Container(
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
                  ),
                ),
              ],
            ),
          ),
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
