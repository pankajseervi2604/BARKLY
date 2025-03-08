import 'package:barkly/page_routes/home_route.dart';
import 'package:barkly/page_routes/login_route.dart';
import 'package:barkly/page_routes/onbording_route.dart';
import 'package:barkly/page_routes/signup_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      designSize: Size(screenWidth, screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          title: "Barkly",
          theme: ThemeData(
            brightness: Brightness.light,
            fontFamily: "OpenSans",
          ),
          initialRoute: "/home",
          routes: {
            "/home": (context) => HomeRoute(),
            "/onbording": (context) => OnbordingRoute(),
            "/login": (context) => LoginRoute(),
            "/signup": (context) => SignupRoute(),
          },
        );
      },
    );
  }
}
