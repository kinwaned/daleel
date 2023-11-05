import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextWidget extends StatelessWidget {
  const ForgetPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: (){
            customReplacementNavigation(context, 'path');
          },
          child: Text(
            AppStrings.forgotPassword,
            style: CustomTextStyles.poppins600style28.copyWith(fontSize: 12),
          ),
        ));
  }
}
