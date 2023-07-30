import 'package:entertainment/Constants/AppPaddings/AppPadding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../Constants/Colors/AppColors.dart';
import '../../Constants/Svgs/SvgIcons.dart';
import '../../widgets/app_text.dart';

class NewContest extends StatelessWidget {
  const NewContest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        title: AppText(
          text: "Enter Contest",
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
                          Color.fromARGB(255, 226, 222, 222).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/harry.png"),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F0F7),
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Center(
                        child: AppText(
                      text: "3d",
                      textcolor: AppColors.primaryColor,
                      fontSize: 12,
                    )),
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F0F7),
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Center(
                        child: AppText(
                      text: "10h",
                      textcolor: AppColors.primaryColor,
                      fontSize: 12,
                    )),
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F0F7),
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Center(
                        child: AppText(
                      text: "20m",
                      textcolor: AppColors.primaryColor,
                      fontSize: 12,
                    )),
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F0F7),
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Center(
                        child: AppText(
                      text: "12s",
                      textcolor: AppColors.primaryColor,
                      fontSize: 12,
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: "Harry Potter",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ReadMoreText(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                trimLines: 2,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'See more...',
                trimExpandedText: 'Show less',
                style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
                moreStyle: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: "Rules",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ReadMoreText(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                trimLines: 2,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'See more...',
                trimExpandedText: 'Show less',
                style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
                moreStyle: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.68,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F0F7),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.string(SvgIcons.upload),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                AppText(
                                  text: "Upload from Devices",
                                  textcolor: AppColors.primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
