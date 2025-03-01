import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountConnection extends StatelessWidget {
  final String imageId;
  const AccountConnection({super.key, required this.imageId});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      customBorder: StadiumBorder(),
      onTap: () {},
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
        child: Image.asset(
          imageId,
          scale: 20,
        ),
      ),
    );
  }
}
