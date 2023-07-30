import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../Constants/Colors/AppColors.dart';
import '../../controllers/mainpagecontroller.dart';
import '../../widgets/bottomnav.dart';

class ContestDashboard extends StatelessWidget {
  int currentIndex = 0;
   ContestDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MainPageController mainPageController = Get.put(MainPageController());
    mainPageController.currentIndex = currentIndex;
  return ColoredBox(
      color: AppColors.appBackgroundColor,
      child: SafeArea(
        child: GetBuilder<MainPageController>(
          init: MainPageController(),
          builder: (_) {
            return Scaffold(
              body: _.mainScreens[_.currentIndex],
              bottomNavigationBar: AppBottomSheet(
                currentIndex: _.currentIndex,
                onIndexChanged: (index) {
                  _.changeScreen(index);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
