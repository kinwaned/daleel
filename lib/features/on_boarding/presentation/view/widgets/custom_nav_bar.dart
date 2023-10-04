import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topRight,
      child: Text(
        AppStrings.skip,
        style: CustomTextStyles.popins500style16
            .copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
