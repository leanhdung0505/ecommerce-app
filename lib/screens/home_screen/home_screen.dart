import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:ecommerce_app/data/model/featured_model.dart';
import 'package:ecommerce_app/data/model/home_model.dart';
import 'package:ecommerce_app/data/model/products_model.dart';
import 'package:ecommerce_app/data/model/slider_model.dart';
import 'package:ecommerce_app/screens/home_screen/widgets/list_featured_widget.dart';
import 'package:ecommerce_app/screens/home_screen/widgets/product_list_item_widget.dart';
import 'package:ecommerce_app/screens/home_screen/widgets/slider_widget.dart';
import 'package:ecommerce_app/utils/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeModel _homeModel = HomeModel();
  final ValueNotifier<int> _currentSliderIndex = ValueNotifier<int>(0);

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
                        const SizedBox(
                          height: 16,
                        ),
                        _buildCategoryScroll(),
                        const SizedBox(
                          height: 20,
                        ),
                        _buildSlider(),
                        const SizedBox(
                          height: 20,
                        ),
                        _buildProductList(),
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
                const SizedBox(
                  width: 10,
                ),
                _buildFilterButton(),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSortButton() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 30,
        width: 70,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sort',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.swap_vert,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterButton() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 30,
        width: 77,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Filter',
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.filter_alt_rounded,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryScroll() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Container(
              width: 438,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 6),
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 16,
                        children: List.generate(_homeModel.listFeatured.length,
                            (index) {
                          FeaturedModel model = _homeModel.listFeatured[index];
                          return ListFeaturedWidget(model);
                        }),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget _buildFlashNews(
      {required String titleFlashNews,
      required String timeFlash,
      required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleFlashNews,
          style: GoogleFonts.montserrat(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  timeFlash,
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlider() {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 188,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          _currentSliderIndex.value = index;
                        }),
                    itemCount: _homeModel.listSlider.length,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      SliderModel model = _homeModel.listSlider[index];
                      return SliderWidget(
                        model,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ValueListenableBuilder<int>(
                  valueListenable: _currentSliderIndex,
                  builder: (context, currentIndex, child) {
                    return SizedBox(
                      height: 8,
                      child: AnimatedSmoothIndicator(
                        activeIndex: currentIndex,
                        count: _homeModel.listSlider.length,
                        axisDirection: Axis.horizontal,
                        effect: const ScrollingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Color(0XFF17223B),
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 22,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0XFF4392F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildFlashNews(
                          titleFlashNews: 'Deal of the Day',
                          timeFlash: '22h 55m 20s remaining',
                          icon: Icons.watch_later_outlined,
                        ),
                      ),
                      _buildViewAllButton(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildViewAllButton() {
    return CustomOutlinedButton(
      width: 100,
      text: "View all",
      radius: 8,
      rightIcon: Container(
          margin: const EdgeInsets.only(left: 4),
          child: const Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
            size: 20,
          )),
    );
  }

  Widget _buildProductList() {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 12,
          children: List.generate(
            _homeModel.listProduct!.length,
            (index) {
              ProductsModel model = _homeModel.listProduct[index];
              return ProductListItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
