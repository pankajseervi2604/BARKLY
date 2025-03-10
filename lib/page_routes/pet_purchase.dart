import 'package:barkly/components/pet_characteristics.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PetPurchase extends StatefulWidget {
  const PetPurchase({super.key});

  @override
  State<PetPurchase> createState() => _PetPurchaseState();
}

class _PetPurchaseState extends State<PetPurchase> {
  CarouselController controller = CarouselController();
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1672115680958-54438df0ab82?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW5zfGVufDB8fDB8fHww"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1672115680958-54438df0ab82?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW5zfGVufDB8fDB8fHww"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1672115680958-54438df0ab82?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW5zfGVufDB8fDB8fHww"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1672115680958-54438df0ab82?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW5zfGVufDB8fDB8fHww"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1672115680958-54438df0ab82?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW5zfGVufDB8fDB8fHww"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 300.h,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: 5,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Colors.blue,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(0, 0),
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 15.r, left: 15.r, right: 15.r),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "petName",
                              textScaler: TextScaler.linear(1.6),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.male,
                            color: Colors.green,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "demo pet location",
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PetCharacteristics(
                              petCharacterType: "Bread",
                              petCharacter: "petBread",
                            ),
                            PetCharacteristics(
                              petCharacterType: "Color",
                              petCharacter: "petColor",
                            ),
                            PetCharacteristics(
                              petCharacterType: "Weight",
                              petCharacter: "petWeight",
                            ),
                            PetCharacteristics(
                              petCharacterType: "Age",
                              petCharacter: "petAge",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.paste,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Health",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "• Fully vaccinated",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "• Neutured",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.paste_rounded,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Characteristics",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "• Good with kids",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "• Playful and athletics",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "• Good apitite",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "• Hyper playeful",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Text(
                                    "• Ready active",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: SizedBox(
        height: 50,
        width: 300,
        child: FloatingActionButton.extended(
          
          elevation: 10,
          onPressed: () {
            Navigator.of(context).pop();
          },
          backgroundColor: Colors.black,
          label: Text(
            "Adopt me",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
