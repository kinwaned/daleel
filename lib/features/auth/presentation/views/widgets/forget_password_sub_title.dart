import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordSubTitle extends StatelessWidget {
  const ForgetPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text('Enter registered email below to receive password reset instructions',
        style: CustomTextStyles.poppins400style12.copyWith(fontSize: 14),
        textAlign: TextAlign.center,),
    );
  }
}
