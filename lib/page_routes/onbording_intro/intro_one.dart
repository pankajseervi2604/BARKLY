import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50.r),
        child: Column(
          children: [
            Image.asset(
              "assets/images/illusturations/illusturation_4.png",
            ),
            SizedBox(
              height: 95.h,
            ),
            Text(
              "Find Your Perfect Pet",
              textScaler: TextScaler.linear(1.5),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Discover a wide range of pets waiting for a loving home.\nBrowse through adorable options and choose your new companion!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
