// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
        padding: EdgeInsets.only(
          left: 18,
          right: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeeContainer(fee: fee),
            SizedBox(
              height: 50,
            ),
            Text(
              "Online Payment",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PayementGateWay(
              paymentType: "MasterCard",
              image: "assets/Images/Master card.PNG",
            ),
            SizedBox(
              height: 20,
            ),
            PayementGateWay(
              paymentType: "Visa",
              image: "assets/Images/Visa.PNG",
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Other methods",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            PayementGateWay(
              paymentType: "Mobile Transfer",
              image: "assets/Images/Visa.PNG",
            ),
            Center(
              child: Image.asset(
                "assets/Images/Motions Logo.PNG",
                filterQuality: FilterQuality.high,
                width: 140,
                height: 140,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
