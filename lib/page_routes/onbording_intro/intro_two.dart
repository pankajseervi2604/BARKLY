import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 20.r),
        child: Column(
          children: [
            Image.asset("assets/images/illusturations/illusturation_2.jpg"),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Shop Essentials & Treats",
              textScaler: TextScaler.linear(1.5),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Get high-quality pet food, accessories, and toys all\nin one place. Keep your furry friends happy and healthy!",
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
