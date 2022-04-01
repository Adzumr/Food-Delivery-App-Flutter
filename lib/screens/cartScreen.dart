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
    double totalCartAmount = 0;
    currentUser.cart?.forEach((Order order) =>
        totalCartAmount += order.quantity!.toDouble() * order.food!.price!);
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: buttonColor,
        centerTitle: true,
        title: Text(" Cart (${currentUser.cart!.length})"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: currentUser.cart!.length,
              itemBuilder: (BuildContext context, int index) {
                Order order = currentUser.cart![index];
                return Card(
                  margin: const EdgeInsets.all(10.0),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 260.sp,
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
                                    order.food!.imageUrl.toString(),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${order.food!.name}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        "${order.restaurant!.name}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 5.0),
                                      Container(
                                        width: 60.sp,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 1,
                                            color: buttonColor,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.remove,
                                              size: 15.sp,
                                            ),
                                            Text(
                                              order.quantity.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Icon(
                                              Icons.add,
                                              size: 15.sp,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "\$   ${order.quantity! * order.food!.price!}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(width: 15)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40.sp,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
                onPrimary: whiteColor,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CHECKOUT",
                    style: TextStyle(
                      letterSpacing: 4,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    "Total: \$ " + totalCartAmount.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // bottomSheet: InkWell(
      //   onTap: () {},
      //   child: Container(
      //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //     color: buttonColor,
      //     height: 40.sp,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           "CHECKOUT",
      //           style: TextStyle(
      //             letterSpacing: 4,
      //             fontSize: 18.sp,
      //             fontWeight: FontWeight.w600,
      //             color: whiteColor,
      //           ),
      //         ),
      //         Text(
      //           "Total: \$ " + totalCartAmount.toStringAsFixed(2),
      //           style: TextStyle(
      //             fontSize: 18.sp,
      //             fontWeight: FontWeight.w600,
      //             color: whiteColor,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
