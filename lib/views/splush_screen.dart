import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appName.dart';
import 'package:with_firebase_flutter_uidesign1/views/bottom_napbar.dart';
import 'package:with_firebase_flutter_uidesign1/views/welcome_screen.dart';

class Splush_Screen extends StatefulWidget {
  const Splush_Screen({super.key});

  @override
  State<Splush_Screen> createState() => _Splush_ScreenState();
}

class _Splush_ScreenState extends State<Splush_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => Welcome_Screen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.prymarey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/welcome_getstart.png"),
              Text(
                AppConfig.appName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
