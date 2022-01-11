import 'package:flutter/material.dart';
import 'package:taxi_app/Contants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CheckOut(),
      title: "Taxi App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kprimaryColor,
        fontFamily: "poppins",
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text(
              "Motions",
              style: TextStyle(
                color: ksecondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        backgroundColor: kbackgroundColor,
      ),
    );
  }
}

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
          horizontal: 15,
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
              PamentType: "MasterCard",
            ),
          ],
        ),
      ),
    );
  }
}

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
  final String PamentType;
  const PayementGateWay({Key? key, required this.PamentType}) : super(key: key);
  bool card(String cardType) {
    if (cardType == "MasterCard") {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: 369,
      child: Row(
        children: [
          card(PamentType)
              ? Image.asset("assets/Images/Master card.PNG")
              : Image.asset("assets/Images/Visa.PNG"),
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
    );
  }
}
