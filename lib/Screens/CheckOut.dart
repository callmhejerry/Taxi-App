// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget.dart';
import '../Contants.dart';

class CheckOut extends StatelessWidget {
  final String fee = "\$23";
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: kprimaryColor,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 21.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeeContainer(fee: fee),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Online Payment",
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            PayementGateWay(
              paymentType: "MasterCard",
              image: "assets/Images/Master card.PNG",
            ),
            SizedBox(
              height: 20.h,
            ),
            PayementGateWay(
              paymentType: "Visa",
              image: "assets/Images/Visa.PNG",
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Other methods",
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            PayementGateWay(
              paymentType: "Mobile Transfer",
              image: "assets/Images/Visa.PNG",
            ),
            SizedBox(height: 162.h),
            Center(
              child: Image.asset(
                "assets/Images/Motions Logo.PNG",
                filterQuality: FilterQuality.high,
                width: 104,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
