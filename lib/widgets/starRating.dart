import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
