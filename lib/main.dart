import 'package:flutter/material.dart';
import 'package:taxi_app/Contants.dart';
import 'Widget.dart';

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
