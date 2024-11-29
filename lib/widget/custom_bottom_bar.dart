import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum BottomBarEnum { Home, Wishlist, Search, Setting }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, this.onChanged});
  Function(BottomBarEnum)? onChanged;
  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: const Icon(Icons.home_filled, color: Color(0XFF4B5563)),
      activeIcon: const Icon(Icons.home_filled, color: Color(0XFFEB3030)),
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: const Icon(Icons.favorite_outline, color: Color(0XFF4B5563)),
      activeIcon: const Icon(Icons.favorite_outline, color: Color(0XFFEB3030)),
      title: "Wishlist",
      type: BottomBarEnum.Wishlist,
    ),
    BottomMenuModel(
      icon: const Icon(Icons.shopping_cart_outlined, color: Color(0XFF4B5563)),
      activeIcon:
          const Icon(Icons.shopping_cart_outlined, color: Color(0XFFEB3030)),
      type: BottomBarEnum.Home,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: const Icon(Icons.search, color: Color(0XFF4B5563)),
      activeIcon: const Icon(Icons.search, color: Color(0XFFEB3030)),
      title: "Search",
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: const Icon(Icons.settings, color: Color(0XFF4B5563)),
      activeIcon: const Icon(Icons.settings, color: Color(0XFFEB3030)),
      title: "Setting",
      type: BottomBarEnum.Setting,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0XFFF2F4F7),
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              children: List.generate(bottomMenuList.length, (index) {
                return Expanded(
                  child: Container(
                    color: selectedIndex == index && !bottomMenuList[index].isCircle
                        ? const Color(0XFFEB3030)
                        : Colors.transparent,
                  ),
                );
              }),
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              if (bottomMenuList[index].isCircle) {
                return BottomNavigationBarItem(
                  icon: Container(
                    height: 50,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Color(0XFF4B5563),
                    ),
                  ),
                  label: '',
                );
              }
              return BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bottomMenuList[index].icon is Icon
                        ? bottomMenuList[index].icon
                        : const Icon(
                            Icons.error,
                            color: Color(0XFF4B5563),
                            size: 24,
                          ),
                    const SizedBox(height: 4),
                    Text(
                      bottomMenuList[index].title ?? "",
                      style: GoogleFonts.roboto(
                          color: const Color(0XFF4B5563),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bottomMenuList[index].activeIcon is Icon
                        ? bottomMenuList[index].activeIcon
                        : const Icon(
                            Icons.error,
                            color: Color(0XFFEB3030),
                            size: 24,
                          ),
                    const SizedBox(height: 4),
                    Text(
                      bottomMenuList[index].title ?? "",
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0XFFEB3030),
                      ),
                    )
                  ],
                ),
                label: '',
              );
            }),
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
              widget.onChanged?.call(bottomMenuList[index].type);
            },
          ),
        ],
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type,
      this.isCircle = false});
  dynamic icon;
  dynamic activeIcon;
  String? title;
  BottomBarEnum type;
  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
