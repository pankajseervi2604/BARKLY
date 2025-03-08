import 'dart:async';
import 'dart:convert';
import 'package:barkly/page_routes/pet_purchase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shimmer/shimmer.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int currentIndex = 0;
  List petData = [];
  Set<int> likedPets = {};

  // to get the data first
  @override
  void initState() {
    super.initState();
    jsonDataFetching();
  }

  Future jsonDataFetching() async {
    final String jsonData = await rootBundle.loadString("assets/pet_data.json");
    final Map<String, dynamic> jsonMap = jsonDecode(jsonData);

    setState(() {
      // converting map to list
      petData = jsonMap["pets"];
    });
  }

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
              child: petData != null
                  ? GridView.builder(
                      padding: EdgeInsets.all(8),
                      itemCount: petData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        mainAxisExtent: 255,
                      ),
                      itemBuilder: (context, index) {
                        final pet = petData[index];
                        final isLiked = likedPets.contains(index);
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[50],
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(12.r)),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PetPurchase(),
                                        ),
                                      );
                                    },
                                    child: Image.network(
                                      pet['pet_image'],
                                      fit: BoxFit.cover,
                                      height: 175,
                                      width: double.infinity,
                                    ),
                                  )),
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
                                                  pet['pet_name'],
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                pet['pet_gender'] == "male"
                                                    ? Icon(
                                                        Icons.male,
                                                        color: Colors.green,
                                                      )
                                                    : Icon(
                                                        Icons.female,
                                                        color: Colors.pink,
                                                      ),
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (isLiked) {
                                                  likedPets.remove(index);
                                                } else {
                                                  likedPets.add(index);
                                                }
                                              });
                                            },
                                            icon: Icon(
                                              isLiked
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: isLiked
                                                  ? Colors.purple
                                                  : Colors.purple,
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
                                              pet["pet_age"],
                                              style: TextStyle(
                                                fontSize: 11.sp,
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
                                              pet['pet_breed'],
                                              style: TextStyle(
                                                fontSize: 11.sp,
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
                    )
                  : CircularProgressIndicator(),
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
