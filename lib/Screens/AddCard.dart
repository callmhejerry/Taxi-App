// ignore_for_file: file_names, avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:motions/Contants.dart';
import 'package:motions/providers.dart';

import '../Widget.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController cardNameTextEditingController =
        TextEditingController();
    TextEditingController cardNumberTextEditingController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: kprimaryColor,
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'poppins',
                  )),
              TextSpan(
                text: "Card",
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              MotionCard(
                paymentTypeImage: "assets/Images/Master card.PNG",
              ),
              SizedBox(
                height: 49.h,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(
                        color: kprimaryColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                        width: 334.5.w,
                        height: 40.h,
                        child: TextFormField(
                          controller: cardNameTextEditingController,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'poppins',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          onChanged:
                              Provider.of<CardProvider>(context, listen: false)
                                  .onChangeCardName,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                            disabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: kbackgroundColor,
                                style: BorderStyle.solid,
                                width: 1.2,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: kprimaryColor,
                                style: BorderStyle.solid,
                                width: 1.2,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 27.5.h),
                    Text(
                      "Card Number",
                      style: TextStyle(
                        color: kprimaryColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 334.5.w,
                      height: 40.h,
                      child: TextFormField(
                        controller: cardNumberTextEditingController,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.number,
                        onChanged:
                            Provider.of<CardProvider>(context, listen: false)
                                .onChangeCardNumber,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kbackgroundColor,
                              style: BorderStyle.solid,
                              width: 1.2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: kprimaryColor,
                              style: BorderStyle.solid,
                              width: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 29.5.h),
                    SizedBox(
                      width: 334.5.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry Date",
                                style: TextStyle(
                                  color: kprimaryColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 194.5.w,
                                height: 40.h,
                                child: TextFormField(
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'poppins',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(0, 0, 0, 18),
                                    disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kbackgroundColor,
                                        style: BorderStyle.solid,
                                        width: 1.2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kprimaryColor,
                                        style: BorderStyle.solid,
                                        width: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVV",
                                style: TextStyle(
                                  color: kprimaryColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 118.w,
                                height: 40.h,
                                child: TextFormField(
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'poppins',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(0, 0, 0, 18),
                                    disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kbackgroundColor,
                                        style: BorderStyle.solid,
                                        width: 1.2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kprimaryColor,
                                        style: BorderStyle.solid,
                                        width: 1.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 204.5.h,
              ),
              MaterialButton(
                onPressed: () {},
                height: 50.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "Add card",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                minWidth: 315.w,
                color: kprimaryColor,
              ),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        ),
      ),
      backgroundColor: kbackgroundColor,
    );
  }
}
