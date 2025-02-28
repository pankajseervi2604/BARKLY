import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbordingRoute extends StatelessWidget {
  const OnbordingRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 20.r),
        child: Column(
          children: [
            Image.asset(
              "assets/images/illusturations/illusturation_3.jpg",
              alignment: Alignment.center,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              "assets/images/applogo/applogo.png",
              scale: 15,
              color: Colors.black,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Welcome to",
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(2),
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Barkly",
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(2.5),
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Find and adapt your favorite dog or cat\nfrom shelters, easier than ever",
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(0.75),
            ),
            SizedBox(
              height: 100.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(200.w, 50.h),
                elevation: 3,
              ),
              onPressed: () {},
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            RichText(
              text: TextSpan(
                text: "Already have an account?  ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                ),
                children: [
                  TextSpan(
                    text: "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      decorationStyle: TextDecorationStyle.dotted,
                      decorationThickness: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
