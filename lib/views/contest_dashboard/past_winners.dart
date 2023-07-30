import 'package:entertainment/Constants/Colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Constants/AppPaddings/AppPadding.dart';
import '../../widgets/app_input_field.dart';
import '../../widgets/app_text.dart';

class PastWinners extends StatelessWidget {
  const PastWinners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        title: AppText(
          text: "Post Contest Winners",
          fontSize: 20,
          textcolor: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: AppPadding.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppInputField(
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: "Search here...",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: "Latest Winner",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PastWinners_Widgets(),
                  PastWinners_Widgets(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PastWinners_Widgets(),
                  PastWinners_Widgets(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PastWinners_Widgets(),
                  PastWinners_Widgets(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PastWinners_Widgets(),
                  PastWinners_Widgets(),
                ],
              ),
              const SizedBox(
                height: 20,
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

class PastWinners_Widgets extends StatelessWidget {
  const PastWinners_Widgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppText(
                text: "Harry Potter",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: "Winner:"),
                AppText(
                  text: "rohansukhdeo",
                  textcolor: AppColors.primaryColor,
                  fontSize: 12,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Winner Submisssion",
                  fontSize: 12,
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColor,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
