import 'package:entertainment/Constants/AppPaddings/AppPadding.dart';
import 'package:entertainment/Constants/Colors/AppColors.dart';
import 'package:entertainment/Constants/Svgs/SvgIcons.dart';
import 'package:entertainment/views/contest_dashboard/past_winners.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/app_text.dart';

class OtherProfile extends StatelessWidget {
  const OtherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        title: AppText(
          text: "nuralamui111",
          fontSize: 20,
          textcolor: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                        const  Color.fromARGB(255, 226, 222, 222).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset:const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ),
      ),
      body: Container(
        padding: AppPadding.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "rohansukhdeo",
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFF0EC)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "35",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        textcolor: const Color(0xffFF8463),
                      ),
                      AppText(
                        text: "Contest Won",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: "Social Media Links",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F0F7),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(SvgIcons.facebook),
                              AppText(
                                text: "Facebook",
                                textcolor: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F0F7),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(SvgIcons.instagram),
                              AppText(
                                text: "Instagram",
                                textcolor: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F0F7),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(SvgIcons.twitter),
                              AppText(
                                text: "Twitter",
                                textcolor: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F0F7),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(SvgIcons.linkedin),
                              AppText(
                                text: "Linked In",
                                textcolor: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: "Winning Entries",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PastWinners_Widgets(),
                  PastWinners_Widgets(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
