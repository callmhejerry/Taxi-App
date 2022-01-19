import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:taxi_app/Contants.dart';
import './Screens/History.dart';
import 'package:taxi_app/providers.dart';

// import 'Screens/History.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: "Taxi App",
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardProvider>(
              create: (BuildContext context) => CardProvider(),
            )
          ],
          child: History(),
        ),
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: kprimaryColor,
          fontFamily: "poppins",
          backgroundColor: kbackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
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
