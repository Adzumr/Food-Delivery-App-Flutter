import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:food_delivery_app_flutter/models/order.dart';
import 'package:sizer/sizer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: buttonColor,
        centerTitle: true,
        title: Text(" Cart (${currentUser.cart!.length})"),
      ),
      body: ListView.builder(
        itemCount: currentUser.cart!.length,
        itemBuilder: (BuildContext context, int index) {
          Order order = currentUser.orders![index];
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                height: 100.sp,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              height: 100.sp,
                              width: 120.sp,
                              fit: BoxFit.cover,
                              image:
                                  AssetImage(order.food!.imageUrl.toString()),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                order.food!.name.toString(),
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                order.restaurant!.name.toString(),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: buttonColor,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.remove),
                                    const SizedBox(width: 10),
                                    Text(
                                      order.quantity.toString(),
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(width: 10),
                                    const Icon(Icons.add),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      order.food!.price.toString(),
                    ),
                    const SizedBox(width: 10)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
