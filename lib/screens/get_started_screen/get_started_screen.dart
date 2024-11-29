import 'package:ecommerce_app/utils/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/app_route.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(ImageConstant.imageGetStarted),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              const SizedBox(
                height: 436,
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(right: 14),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Text(
                      'You want Authentic, here you go!',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Find it here, buy it now!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: const Color(0XFFF2F2F2),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 279,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () =>
                            AppRoute.navigateTo(context, AppRoute.homeScreen),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFFF83758),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
