import 'package:entertainment/Constants/AppPaddings/AppPadding.dart';
import 'package:entertainment/Constants/Colors/AppColors.dart';
import 'package:entertainment/Constants/Svgs/SvgIcons.dart';
import 'package:entertainment/views/contest_dashboard/contest_dashboard.dart';
import 'package:entertainment/views/contest_dashboard/register.dart/forget.dart';
import 'package:entertainment/views/contest_dashboard/register.dart/signup.dart';
import 'package:entertainment/widgets/app_button.dart';
import 'package:entertainment/widgets/app_input_field.dart';
import 'package:entertainment/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            color: const Color(0xffF2F0F7),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Logo",
                        style: GoogleFonts.playfairDisplay(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: AppColors.primaryColor),
                      )
                    ],
                  ),
                ]),
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: AppPadding.defaultPadding,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                AppText(
                  text: "Log In",
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                const SizedBox(
                  height: 30,
                ),
                AppInputField(
                  hintText: "input here...",
                  upperText: 'Username',
                ),
                const SizedBox(
                  height: 30,
                ),
                AppInputField(
                  hintText: "input here...",
                  upperText: 'Password',
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Forget()));
                      },
                      child: AppText(
                        text: "Forget Password?",
                        textcolor: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                    btnText: "Log In",
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContestDashboard()));
                    }),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Don't have an Account?",
                      textcolor: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: AppText(
                        text: "Sign Up",
                        textcolor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: 1,
                      child: Container(
                        color: const Color(0xffDDDDDE),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    AppText(
                      text: "Or",
                      fontSize: 16,
                      textcolor: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: 1,
                      child: Container(
                        color: const Color(0xffDDDDDE),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F0F7),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(SvgIcons.googleIcon),
                              const SizedBox(
                                width: 5,
                              ),
                              AppText(
                                text: "Google",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                textcolor: AppColors.primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: const Color(0xffF2F0F7),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(SvgIcons.appleIcon),
                              const SizedBox(
                                width: 5,
                              ),
                              AppText(
                                text: "Apple",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                textcolor: AppColors.primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: AppText(
                    text: "Help",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    textcolor: AppColors.primaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
