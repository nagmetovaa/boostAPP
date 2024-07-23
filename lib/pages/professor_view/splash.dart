import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:get/get.dart';

import 'onboarding.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}
class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(Duration(seconds: 5), () {
      Get.off(OnboardingCarousel());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor('#EBF0F8'),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/boost-logo-white-nav.png',
                fit: BoxFit.cover,
                width: 270.0,
                height: 102.0,
              ),
              SizedBox(
                child: CircularProgressIndicator(
                  color: Colors.lightBlue[200],
                  strokeWidth: 10.0,
                ),
                height: 80,
                width: 80,
              )
            ],
          )
        ),
      ),
    );
  }
}