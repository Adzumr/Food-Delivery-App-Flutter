import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:food_delivery_app_flutter/models/order.dart';
import 'package:sizer/sizer.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Recent Orders",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 100.sp,
                // margin: const EdgeInsets.only(left: 8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: currentUser.orders!.length,
                  itemBuilder: (BuildContext context, int index) {
                    Order order = currentUser.orders![index];
                    String foodName = order.food!.name.toString();
                    String restaurantName = order.restaurant!.name.toString();
                    String foodPrice = order.food!.price.toString();
                    String foodImage = order.food!.imageUrl.toString();
                    return _recentOrders(
                      foodImage,
                      foodName,
                      restaurantName,
                      foodPrice,
                    );
                  },
                ),
              )
            ],
          )),
    );
  }

  Card _recentOrders(String foodImage, String foodName, String restaurantName,
      String foodPrice) {
    return Card(
      margin: const EdgeInsets.only(right: 20),
      elevation: 2,
      color: whiteColor,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: whiteColor, width: 2)),
      child: Container(
        width: 260.sp,
        // padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: 100.sp,
                      height: 100.sp,
                      child: Image.asset(
                        foodImage,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            foodName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            restaurantName,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "\$ " + foodPrice,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
