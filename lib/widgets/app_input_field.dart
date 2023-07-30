import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/Colors/AppColors.dart';
import 'app_text.dart';

class AppInputField extends StatelessWidget {
  String hintText;
  String? upperText;
  bool obscureText;
  TextEditingController? controller;
  TextInputType? keyboardtype;
  Widget? suffixIcon, prefixIcon;
  void Function()? onTap;
  EdgeInsetsGeometry contentPadding;
  bool? enabled;
  double? width, height;
  int? maxLines;
  TextInputAction textInputAction;
  int? maxLength;
  AppInputField({
    Key? key,
    required this.hintText,
    this.controller,
    this.keyboardtype,
    this.obscureText = false,
    this.suffixIcon,
    this.contentPadding = const EdgeInsets.only(top: 15, left: 15),
    this.onTap,
    this.enabled,
    this.width,
    this.prefixIcon,
    this.height,
    this.upperText,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: upperText ?? "",
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: width,
            height: height ?? 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              maxLength: maxLength,
              maxLines: maxLines,
              textInputAction: textInputAction,
              enabled: enabled,
              autofocus: false,
              obscureText: obscureText,
              keyboardType: keyboardtype,
              controller: controller,
             
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                prefixIconColor: const Color(0xff8E8D91),
                
                suffixIcon: suffixIcon,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(
                    color: Color(0xffDDDDDE),
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(
                    color: Color(0xffDDDDDE),
                    width: 2.0,
                  ),
                ),
                hintText: hintText,
                contentPadding: contentPadding,
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff8E8D91),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropdownContainer extends StatelessWidget {
  Object? currentValue;
  List<String> items;
  void Function(Object? value)? onValueChange;
  DropdownContainer({
    Key? key,
    required this.currentValue,
    required this.items,
    required this.onValueChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.grey.withOpacity(0.20),
            blurRadius: 8,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          style: GoogleFonts.didactGothic(),
          value: currentValue,
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Center(
                    child: AppText(
                      text: e,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textcolor: AppColors.primaryColor,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: onValueChange,
          alignment: Alignment.center,
          icon: const Icon(
            Icons.arrow_drop_down,
            size: 30,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
