import 'package:entertainment/views/contest_dashboard/past_winners.dart';
import 'package:entertainment/views/contest_dashboard/profile.dart';
import 'package:entertainment/views/contest_dashboard/top_categories.dart';
import 'package:entertainment/views/contest_dashboard/trending_contest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController {
  int currentIndex = 0;
  List<Widget> mainScreens = [
  const  TrendingContests(),
  const  TopCategories(),
  const  PastWinners(),
  const  ProfileUser(),
  ];

  changeScreen(int index) {
    currentIndex = index;
    update();
  }
}
