import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/data/data.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
