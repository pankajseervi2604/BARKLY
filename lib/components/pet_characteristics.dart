import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PetCharacteristics extends StatelessWidget {
  final String petCharacter;
  final String petCharacterType;
  const PetCharacteristics(
      {super.key, required this.petCharacterType, required this.petCharacter});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            color: Colors.purple,
          ),
        ],
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(5.r),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              petCharacter,
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              petCharacterType,
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
