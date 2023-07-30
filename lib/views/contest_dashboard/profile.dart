import 'package:entertainment/Constants/AppPaddings/AppPadding.dart';
import 'package:entertainment/Constants/Colors/AppColors.dart';
import 'package:entertainment/views/otherprofile/other_profile.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_text.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        title: AppText(
          text: "Profile",
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
                        text: "\$500",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        textcolor: const Color(0xffFF8463),
                      ),
                      AppText(
                        text: "Wallet Balance",
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
              AppText(
                text: "Withdraw Now",
                textcolor: AppColors.primaryColor,
                fontSize: 18,
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'About Me',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ProfileTile(
                text: 'Experience',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Links to Other Social Media',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Payment Method',
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Withdrawl Method',
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Contest History',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'FAQ',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Feedback/Contact Us',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'About Us',
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Testimonials',
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  String text;
  void Function()? ontap;

  ProfileTile({
    Key? key,
    required this.text,
    this.ontap,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 241, 236, 236).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: text,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              const InkWell(
                child: Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
