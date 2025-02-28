import 'package:barkly/page_routes/login_route.dart';
import 'package:barkly/page_routes/onbording_intro/intro_one.dart';
import 'package:barkly/page_routes/onbording_intro/intro_three.dart';
import 'package:barkly/page_routes/onbording_intro/intro_two.dart';
import 'package:barkly/page_routes/signup_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OnbordingScreens(),
                  ),
                );
              },
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
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pop(
                          MaterialPageRoute(
                            builder: (context) => LoginRoute(),
                          ),
                        );
                      },
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

class OnbordingScreens extends StatefulWidget {
  const OnbordingScreens({super.key});

  @override
  State<OnbordingScreens> createState() => _OnbordingScreensState();
}

class _OnbordingScreensState extends State<OnbordingScreens> {
  bool onLastpage = false;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(
                () {
                  onLastpage = (index == 2);
                },
              );
            },
            children: [
              IntroOne(),
              IntroTwo(),
              IntroThree(),
            ],
          ),
          Align(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.jumpToPage(2);
                  },
                  child: Text("Skip"),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.black,
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                  ),
                ),
                onLastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SignupRoute(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dotted,
                            decorationThickness: 2,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear,
                          );
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
