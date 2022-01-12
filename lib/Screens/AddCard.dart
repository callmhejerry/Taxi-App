// ignore_for_file: file_names, avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taxi_app/Contants.dart';
import 'package:taxi_app/providers.dart';

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
            children: const [
              TextSpan(
                  text: "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'poppins',
                  )),
              TextSpan(
                text: "Card",
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Center(
          child: Column(
            children: [
              Card(
                paymentTypeImage: "assets/Images/Master card.PNG",
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(
                        color: kprimaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                        width: 334.5,
                        height: 32,
                        child: TextFormField(
                          controller: cardNameTextEditingController,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          onChanged:
                              Provider.of<CardProvider>(context, listen: false)
                                  .onChangeCardName,
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
                        )),
                    SizedBox(height: 15),
                    Text(
                      "Card Number",
                      style: TextStyle(
                        color: kprimaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 334.5,
                      height: 32,
                      child: TextFormField(
                        controller: cardNumberTextEditingController,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'poppins',
                          fontSize: 16,
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
                    SizedBox(height: 15),
                    SizedBox(
                      width: 334.5,
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
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 194.5,
                                height: 32,
                                child: TextFormField(
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'poppins',
                                    fontSize: 16,
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
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 118,
                                height: 32,
                                child: TextFormField(
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'poppins',
                                    fontSize: 16,
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
                height: 200,
              ),
              MaterialButton(
                onPressed: () {},
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "Add card",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                minWidth: 315,
                color: kprimaryColor,
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
      backgroundColor: kbackgroundColor,
    );
  }
}

class Card extends StatefulWidget {
  final String paymentTypeImage;

  const Card({Key? key, required this.paymentTypeImage}) : super(key: key);
  @override
  State<Card> createState() {
    return _CardState();
  }
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    String cardName = Provider.of<CardProvider>(context).cardName;
    String cardNumber = Provider.of<CardProvider>(context).cardNumber;
    return Container(
      height: 190,
      width: 344,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: kbackgroundColor,
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(0.17),
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/Images/Motions Logo.PNG",
                  width: 100, height: 50),
              Image.asset(
                widget.paymentTypeImage,
                height: 32,
                width: 53,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            cardName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            cardNumber,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
