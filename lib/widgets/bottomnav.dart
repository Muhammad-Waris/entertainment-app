import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/Colors/AppColors.dart';
import '../Constants/Svgs/SvgIcons.dart';
import 'app_text.dart';

class AppBottomSheet extends StatelessWidget {
  int currentIndex;
  void Function(int index)? onIndexChanged;
  AppBottomSheet({
    Key? key,
    this.currentIndex = 0,
    this.onIndexChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onIndexChanged,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 47,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.string(
                      SvgIcons.home,
                      width: 30,
                      color: currentIndex == 0
                          ? AppColors.primaryColor
                          : Colors.black,
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 47,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.string(
                      SvgIcons.search,
                      width: 27,
                      color: currentIndex == 1
                          ? AppColors.primaryColor
                          : Colors.black,
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 47,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.string(
                      SvgIcons.tickStar,
                      width: 25,
                      color: currentIndex == 2
                          ? AppColors.primaryColor
                          : Colors.black,
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 47,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.string(
                      SvgIcons.profile,
                      width: 22,
                      color: currentIndex == 3
                          ? AppColors.primaryColor
                          : Colors.black,
                    ),
                  ],
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
