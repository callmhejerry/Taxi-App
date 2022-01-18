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

class HistoryBox extends StatefulWidget {
  const HistoryBox({Key? key}) : super(key: key);

  @override
  State<HistoryBox> createState() => _HistoryBoxState();
}

class _HistoryBoxState extends State<HistoryBox> {
  final String time = '11:30 AM';

  final String pickUpLocation = 'Amansea';

  final String dropOffLocation = 'Aroma';
  final String vehicle = 'Car';
  final String transportFare = '\$23';
  bool vehicleVisibility = false;
  void visibilty() {
    setState(() {
      vehicleVisibility = !vehicleVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: visibilty,
      child: Container(
        margin: EdgeInsets.only(bottom: vehicleVisibility ? 30 : 20),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            // height: 174,
            width: 335,
            padding: EdgeInsets.symmetric(horizontal: 29, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 25),
                  blurRadius: 40,
                  color: Colors.black.withOpacity(0.16),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 3),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff514BC3),
                          ),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff70B200),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'PICK UP',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(.60),
                                ),
                              ),
                              Text(
                                time,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kprimaryColor.withOpacity(.60),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            pickUpLocation,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 22.5,
                          ),
                          Divider(
                            color: kprimaryColor.withOpacity(.30),
                            thickness: 1,
                            height: 0,
                          ),
                          SizedBox(
                            height: 25.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'DROP OFF',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(.60),
                                ),
                              ),
                              Text(
                                time,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kprimaryColor.withOpacity(.60),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            dropOffLocation,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          vehicleVisibility
                              ? Column(
                                  children: [
                                    SizedBox(height: 15),
                                    Image.asset('assets/Images/car.png'),
                                    SizedBox(height: 15),
                                  ],
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
                vehicleVisibility
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            vehicle,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            transportFare,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
          vehicleVisibility
              ? Positioned(
                  bottom: -20,
                  left: 148,
                  child: dropIcon(onpressed: visibilty),
                )
              : SizedBox(),
        ]),
      ),
    );
  }
}

Widget dropIcon({void Function()? onpressed}) {
  return InkWell(
    onTap: onpressed,
    child: Container(
      height: 40,
      width: 40,
      child: Icon(
        Icons.arrow_drop_up,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 30,
            color: Color(0xff1466CC).withOpacity(.16),
          )
        ],
      ),
    ),
  );
}
