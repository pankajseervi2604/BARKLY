import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 20.r),
        child: Column(
          children: [
            Image.asset(
              "assets/images/illusturations/illusturation_1.png",
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Easy & Secure Adoption",
              textScaler: TextScaler.linear(1.5),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "A hassle-free adoption process with trusted sellers.\nBring home your new pet with confidence and care!",
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
