import 'package:entertainment/views/contest_dashboard/register.dart/forget.dart';
import 'package:entertainment/views/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Constants/AppPaddings/AppPadding.dart';
import '../../../Constants/Colors/AppColors.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_input_field.dart';
import '../../../widgets/app_text.dart';
import '../contest_dashboard.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                  text: "Sign Up",
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
                const SizedBox(
                  height: 30,
                ),
                AppInputField(
                  hintText: "input here...",
                  upperText: 'Email',
                ),
                const SizedBox(
                  height: 30,
                ),
                AppInputField(
                  hintText: "input here...",
                  upperText: 'First Name',
                ),
                const SizedBox(
                  height: 30,
                ),
                AppInputField(
                  hintText: "input here...",
                  upperText: 'Last Name',
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
                    btnText: "Sign Up",
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
                      text: "Already have an Account?",
                      textcolor: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: AppText(
                        text: "Login",
                        textcolor: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
