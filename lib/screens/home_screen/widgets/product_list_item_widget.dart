import 'package:ecommerce_app/data/model/products_model.dart';
import 'package:ecommerce_app/widget/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ProductListItemWidget extends StatelessWidget {
  ProductListItemWidget(this.productsModel, {super.key});
  ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: Image.asset(
              productsModel.imagePath!,
              height: 124,
              width: double.maxFinite,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              productsModel.name!,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              productsModel.name!,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              productsModel.price!.toString(),
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                Text(
                  productsModel.price!.toString(),
                  style: GoogleFonts.montserrat(
                      color: const Color(0XFFBBBBBB),
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    productsModel.saleOff!.toString(),
                    style: GoogleFonts.montserrat(
                        color: const Color(0XFFFE735C),
                        fontWeight: FontWeight.w300,
                        fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: productsModel.rate!,
                  color: const Color(0XFFEDB310),
                  unselectedColor: const Color(0XFFBBBBBB),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    productsModel.numberRate!.toString(),
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      color: const Color(0XFFA4A9B3),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
