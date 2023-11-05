import 'package:daleel/core/utils/app_colors.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.onFieldSubmitted, this.suffixIcon, this.obscureText});

  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 24),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'This field is required';
          }else {
            return null;
          }
        },
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelStyle: CustomTextStyles.poppins500style12,
          labelText: labelText,
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          suffixIcon: suffixIcon,
          suffixIconColor: AppColors.grey,
        ),
      ),
    );
  }

  OutlineInputBorder getBorderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.grey));
  }
}
