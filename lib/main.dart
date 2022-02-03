import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:motions/Screens/AddCard.dart';
import 'package:motions/Screens/Login.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:motions/Contants.dart';
import './Screens/History.dart';
import 'package:motions/providers.dart';

import 'Widget.dart';

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
        title: "Motions",
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<CardProvider>(
              create: (BuildContext context) => CardProvider(),
            )
          ],
          child: AddCard(),
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
  static LatLng target = LatLng(6.2220, 7.0821);
  final Completer<GoogleMapController> _controller = Completer();
  final CameraPosition _cameraPosition = CameraPosition(
    target: target,
    zoom: 16.4,
  );
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 50),
            child: Column(
              children: [
                drawerItem(
                  icon: Icons.close,
                  label: "Close",
                  function: () => Navigator.pop(context),
                ),
                SizedBox(height: 32.h),
                drawerItem(
                    icon: Icons.history,
                    label: "Travel History",
                    function: () => Navigator.pop(context)),
                SizedBox(height: 32.h),
                drawerItem(icon: Icons.notifications, label: "Notifications"),
                SizedBox(height: 32.h),
                drawerItem(icon: Icons.settings, label: "Settings"),
                SizedBox(height: 32.h),
                drawerItem(icon: Icons.logout, label: "Log out"),
                Spacer(),
                Image.asset(
                  "assets/Images/Motions Logo.PNG",
                  width: 104,
                  height: 30,
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: _cameraPosition,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
              left: 40.w,
              bottom: 40.h,
              child: DestionationWindow(),
            ),
            Positioned(
                top: 20,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: kprimaryColor,
                    size: 25,
                  ),
                ))
          ],
        ),
        backgroundColor: kbackgroundColor,
      ),
    );
  }

  InkWell drawerItem({
    required IconData icon,
    required String label,
    Function? function,
  }) {
    return InkWell(
      onTap: () {
        function!();
      },
      child: Row(
        children: [
          Icon(
            icon,
            color: kprimaryColor,
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: kprimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
