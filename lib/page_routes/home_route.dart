import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List categories = ["Filter", "Dogs", "Cats", "Rabbits"];
    final List imageUrl = [
      "assets/images/sys_img/filter.png",
      "assets/images/sys_img/dog.png",
      "assets/images/sys_img/cat.png",
      "assets/images/sys_img/rabbit.png"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 40.r),
            child: Row(
              children: [
                // Left Side (Profile & Location)
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 25.r,
                          backgroundImage: NetworkImage(
                            "https://avatar.iran.liara.run/public",
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                    decorationStyle: TextDecorationStyle.dotted,
                                    decorationThickness: 3,
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_outlined, size: 25),
                              ],
                            ),
                          ),
                          Text(
                            "demo location",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.r),
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(Iconsax.notification),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          left: 20,
                          child: Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.r),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.all(5.r),
            child: SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 5.r, right: 5.r),
                    child: Container(
                      height: 35.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Image.asset(
                              imageUrl[index],
                              scale: 10,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            categories[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.r, right: 10.r),
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 245,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(12.r)),
                          child: Image.asset(
                            "assets/images/sys_img/demo dog.jpeg",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.r, right: 5.r),
                          child: SizedBox(
                            width: double.infinity,
                            height: 70.h,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            "Coco",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Icon(
                                            Icons.male,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Iconsax.heart,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        "Adult",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      VerticalDivider(
                                        thickness: 1,
                                        color: Colors.grey,
                                        endIndent: 5,
                                        indent: 5,
                                        width: 15,
                                      ),
                                      Text(
                                        "demobread",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        iconSize: 22,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        unselectedFontSize: 12.sp,
        selectedFontSize: 14.sp,
        selectedItemColor: Colors.purple,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.search_normal,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.heart,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.user,
            ),
            label: "User",
          ),
        ],
      ),
    );
  }
}
