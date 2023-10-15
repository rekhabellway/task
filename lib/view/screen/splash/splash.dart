
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../auth/sign_in.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.to(const SignIn()));
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff1cb0b), Color(0xfff3c654)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Container(

            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: const Color(0xff312121),
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(100), right: Radius.circular(100)),
              border: Border.all(width: 5, color: Colors.black)
            ),
            child: const Text(
              "1>0",

              style: TextStyle(
                decoration: TextDecoration.none,
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, ),
            ),
          ),
          const Spacer(),

          const Spacer(),
        ],
      ),
    );
  }
}
