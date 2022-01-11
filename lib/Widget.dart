// ignore_for_file: file_names

import "package:flutter/material.dart";
import 'Contants.dart';

class FeeContainer extends StatelessWidget {
  final String fee;
  const FeeContainer({Key? key, required this.fee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      padding: EdgeInsets.symmetric(vertical: 8),
      width: 369,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            fee,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Text(
            "Bills to pay",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}

class PayementGateWay extends StatelessWidget {
  final String image;
  final String paymentType;
  const PayementGateWay(
      {Key? key, required this.paymentType, required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 82,
        width: 369,
        child: Row(
          children: [
            SizedBox(
              width: 21,
            ),
            Image.asset(
              image,
              width: 53,
              height: 32,
              filterQuality: FilterQuality.high,
            ),
            SizedBox(
              width: 21,
            ),
            Text(
              paymentType,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5.0,
              color: Colors.black.withOpacity(0.17),
            )
          ],
          color: Colors.white,
        ),
      ),
    );
  }
}
