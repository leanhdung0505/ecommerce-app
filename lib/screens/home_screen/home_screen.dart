import 'package:ecommerce_app/utils/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0XFFFDFDFD),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildAppBar(context),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSearchSection(context),
                      ],
                    ),
                  ),
                ))
              ],
            )),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFF2F2F2),
            ),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
          ),
          Image.asset(
            ImageConstant.imgLogo,
            width: 250,
            height: 40,
          ),
          ClipOval(
            child: Image.asset(
              ImageConstant.imgAvatar,
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 9,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search any product..',
                hintStyle: GoogleFonts.montserrat(
                    color: const Color(0XFFBBBBBB), fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0XFFFFFFFF),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0XFFBBBBBB),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  color: const Color(0XFFBBBBBB),
                  icon: const Icon(Icons.mic),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 6, right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'All Featured',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const Spacer(),
                _buildSortButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSortButton() {
    return Container(
      height: 24,
      width: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: const Color(0xFFBBBBBB),
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.sort,
            size: 16,
            color: Color(0xFFBBBBBB),
          ),
          const SizedBox(width: 4),
          Text(
            'Sort',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFBBBBBB),
            ),
          ),
        ],
      ),
    );
  }
}
