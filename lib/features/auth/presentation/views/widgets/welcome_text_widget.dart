import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  final String text;

  const WelcomeTextWidget({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.poppins600style28,
      ),
    );
  }
}
