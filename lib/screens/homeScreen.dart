import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:sizer/sizer.dart';

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
          appBar: AppBar(
            title: Text(
              "Food Delivery",
              style: TextStyle(
                color: whiteColor,
                fontSize: 16.sp,
              ),
            ),
            elevation: 0,
            backgroundColor: buttonColor,
            centerTitle: true,
            leading: Icon(
              Icons.account_circle_outlined,
              size: 25.sp,
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Cart (${currentUser.cart!.length})",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16.sp,
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  toolbarOptions: const ToolbarOptions(
                    copy: true,
                    cut: true,
                    paste: true,
                    selectAll: true,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 20.sp,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        size: 20.sp,
                      ),
                    ),
                    hintText: "Search Food or Restaurant",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                    fillColor: whiteColor,
                    filled: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
