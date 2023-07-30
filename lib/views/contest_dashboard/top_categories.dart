import 'package:entertainment/Constants/AppPaddings/AppPadding.dart';
import 'package:entertainment/Constants/Colors/AppColors.dart';
import 'package:entertainment/widgets/app_input_field.dart';
import 'package:entertainment/widgets/app_text.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        title: AppText(
          text: "Search",
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.primaryColor),
                        child: Center(
                          child: AppText(
                            text: "All",
                            textcolor: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffF2F0F7)),
                        child: Center(
                          child: AppText(
                            text: "Politics",
                            textcolor: const Color(0xff8E8D91),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffF2F0F7)),
                        child: Center(
                          child: AppText(
                            text: "Support",
                            textcolor: const Color(0xff8E8D91),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffF2F0F7)),
                        child: Center(
                          child: AppText(
                            fontSize: 12,
                            text: "Entertainment",
                            textcolor: const Color(0xff8E8D91),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppText(
                    text: "Popular",
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
                children: [
                  SearchWidget(
                    text: 'Politics',
                  ),
                  SearchWidget(
                    text: 'Pop Culture',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchWidget(
                    text: 'Food ',
                  ),
                  SearchWidget(
                    text: 'Sports',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchWidget(
                    text: 'Politics',
                  ),
                  SearchWidget(
                    text: 'Pop Culture',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchWidget(
                    text: 'Food ',
                  ),
                  SearchWidget(
                    text: 'Sports',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  String text;
  SearchWidget({
    Key? key,
    required this.text,
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
            height: 20,
          ),
          AppText(
            text: text,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
