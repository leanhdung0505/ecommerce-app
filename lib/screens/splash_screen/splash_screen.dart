import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/routes/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      AppRoute.replaceWith(context, AppRoute.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Image.asset("assets/images/logoipsum-255-1.png",
              height: 250, width: 250)),
    );
  }
}
