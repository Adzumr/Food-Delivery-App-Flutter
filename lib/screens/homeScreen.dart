import 'package:animations/animations.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:food_delivery_app_flutter/screens/cartScreen.dart';
import 'package:food_delivery_app_flutter/screens/profileScreen.dart';
import 'package:food_delivery_app_flutter/widgets/recentOrders.dart';
import 'package:food_delivery_app_flutter/widgets/searchBar.dart';
import 'package:sizer/sizer.dart';

import '../widgets/nearByRestaurant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text(
              "Cheffy User",
              style: TextStyle(
                color: whiteColor,
                fontSize: 16.sp,
              ),
            ),
            elevation: 0,
            backgroundColor: buttonColor,
            centerTitle: true,
            leading: OpenContainer(
              closedColor: buttonColor,
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: const Duration(milliseconds: 600),
              closedBuilder: (context, closedWidget) {
                return Icon(
                  Icons.account_circle_outlined,
                  size: 25.sp,
                );
              },
              openBuilder: (context, openWidget) {
                return const ProfileScreen();
              },
            ),
            actions: [
              OpenContainer(
                closedColor: buttonColor,
                transitionType: ContainerTransitionType.fadeThrough,
                transitionDuration: const Duration(milliseconds: 600),
                closedBuilder: (context, closedWidget) {
                  return Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(right: 15),
                    child: Badge(
                      showBadge: true,
                      position: BadgePosition.topEnd(),
                      badgeColor: whiteColor,
                      badgeContent: Text(
                        "${currentUser.cart!.length}",
                        style: TextStyle(
                          color: buttonColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Icon(Icons.shopping_cart),
                    ),
                  );
                },
                openBuilder: (context, openWidget) {
                  return const CartScreen();
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: const [
                SearchBar(),
                RecentOrders(),
                NearByRestaurants(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
