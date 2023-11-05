
import 'package:bloc/bloc.dart';
import 'package:daleel/core/utils/app_colors.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocProvider.of<AuthCubit>(context).updateTermAndConditionsCheckBox(newValue: newValue);
          });
        });
  }
}
