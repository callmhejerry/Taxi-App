// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:motions/Contants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 148.h,
              ),
              Text(
                'Log in',
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Please Sign in to continue',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 127.h,
              ),
              CustomTextField(
                hintText: "EMAIL ADDRESS",
                prefixIcon: Icons.email,
              ),
              SizedBox(
                height: 18.h,
              ),
              CustomTextField(
                hintText: "PASSWORD",
                prefixIcon: Icons.lock,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: kprimaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 103.h),
              Container(
                height: 47.h,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 29.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have account?",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontFamily: "poppins",
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: kprimaryColor,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 103.h,
              ),
              Center(
                child: Image.asset(
                  "assets/Images/Motions Logo.PNG",
                  height: 30.h,
                  width: 104.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
