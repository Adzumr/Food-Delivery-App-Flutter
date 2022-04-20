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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserInfoTile(
                icon: Icons.person,
                title: "Umar Abdulaziz",
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfoTile extends StatelessWidget {
  String? title;
  IconData? icon;
  UserInfoTile({
    this.icon,
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon!,
        color: primaryColor,
      ),
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
