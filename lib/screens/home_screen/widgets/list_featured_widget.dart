import '../../../data/model/featured_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ListFeaturedWidget extends StatelessWidget {
  ListFeaturedWidget(this.featuredModel, {super.key});

  FeaturedModel? featuredModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(28)),
            child: Image.asset(
              featuredModel!.imagePath!,
              height: 56,
              width: 56,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            featuredModel!.title!,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: const Color(0XFF21003D),
            ),
          )
        ],
      ),
    );
  }
}
