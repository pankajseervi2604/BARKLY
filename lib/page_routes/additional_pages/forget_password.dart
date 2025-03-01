import 'package:barkly/page_routes/additional_pages/password_reset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.r, right: 20.r, top: 20.r),
          child: Column(
            children: [
              Image.asset("assets/images/illusturations/illusturation_6.jpg"),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reset Password",
                  textScaler: TextScaler.linear(1.5),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child:
                    Text("To reset your password, give your alternative email"),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200.w, 50.h),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 500.h,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.r, right: 20.r, top: 20.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "User Verification",
                                  textScaler: TextScaler.linear(1.5),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "We texted you a OTP in your mail, Please enter the OTP.",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              OtpTextField(
                                numberOfFields: 4,
                                borderColor: Colors.black,
                                showFieldAsBox: false,
                                //runs when a code is typed in
                                onCodeChanged: (String code) {},
                                //runs when every textfield is filled
                                onSubmit: (String verificationCode) {},
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "resend OTP",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                    decorationStyle: TextDecorationStyle.dashed,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
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
                                      builder: (context) => PasswordReset(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "submit OPT",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "Send OTP",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
