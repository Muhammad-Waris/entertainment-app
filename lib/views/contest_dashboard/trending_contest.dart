import 'package:entertainment/Constants/AppPaddings/AppPadding.dart';
import 'package:entertainment/Constants/Colors/AppColors.dart';
import 'package:entertainment/views/newcontest/new_contest.dart';
import 'package:entertainment/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingContests extends StatelessWidget {
  const TrendingContests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F0F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF2F0F7),
        title: Text(
          "Logo",
          style: GoogleFonts.playfairDisplay(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 28),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {},
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 33,
                  )),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {},
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: AppPadding.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              AppText(
                text: "Trending Contests",
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Contest(),
                  Contest(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Contest(),
                  Contest(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Contest(),
                  Contest(),
                ],
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Contest extends StatelessWidget {
  const Contest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewContest()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.41,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/harry.png"),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            AppText(
              text: "Harry Potter",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F0F7),
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width * 0.08,
                  child: Center(
                      child: AppText(
                    text: "3d",
                    textcolor: AppColors.primaryColor,
                    fontSize: 12,
                  )),
                ),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F0F7),
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width * 0.08,
                  child: Center(
                      child: AppText(
                    text: "10h",
                    textcolor: AppColors.primaryColor,
                    fontSize: 12,
                  )),
                ),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F0F7),
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width * 0.08,
                  child: Center(
                      child: AppText(
                    text: "20m",
                    textcolor: AppColors.primaryColor,
                    fontSize: 12,
                  )),
                ),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F0F7),
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width * 0.08,
                  child: Center(
                      child: AppText(
                    text: "12s",
                    textcolor: AppColors.primaryColor,
                    fontSize: 12,
                  )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: InkWell(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                      child: AppText(
                    text: "Enter Contest",
                    textcolor: Colors.white,
                    fontSize: 12,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
