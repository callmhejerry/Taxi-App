// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Contants.dart';
import '../Widget.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: kprimaryColor,
        ),
        title: Text(
          "History",
          style: TextStyle(
            color: kprimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              HistoryBox(),
              HistoryBox(),
              HistoryBox(),
              HistoryBox(),
              HistoryBox(),
            ],
          ),
        ),
      ),
    );
  }
}
