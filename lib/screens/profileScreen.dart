import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        centerTitle: true,
        title: const Text("Profile Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "User Profile",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
