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
              Container(
                height: 120.sp,
                decoration: const BoxDecoration(),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: currentUser.orders!.length,
                  itemBuilder: (BuildContext context, int index) {
                    Order order = currentUser.orders![index];
                    String foodName = order.food!.name.toString();
                    String foodPrice = order.food!.price.toString();
                    String foodImage = order.food!.imageUrl.toString();
                    return Container(
                      width: 270.sp,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: SizedBox(
                                  width: 100.sp,
                                  height: 120.sp,
                                  child: Image.asset(
                                    foodImage,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(foodName),
                                  Text(foodPrice),
                                  const Icon(Icons.star_border),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
