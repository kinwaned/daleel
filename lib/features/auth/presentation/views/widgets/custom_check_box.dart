
import 'package:daleel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        side: BorderSide(color: AppColors.grey),
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        });
  }
}
