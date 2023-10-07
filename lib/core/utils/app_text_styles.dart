import 'package:daleel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles{
  static final pacifico400style64 =  TextStyle(
      fontFamily: "Pacifico",
      fontSize: 64,
      fontWeight: FontWeight.w400,
      color: AppColors.deepBrown,
      );
  static final pacifico400style12 =  TextStyle(
    fontFamily: "Poppins",
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static final pacifico500style12 =  TextStyle(
    fontFamily: "Poppins",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static const popins500style24 =  TextStyle(
      fontFamily: "Poppins",
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.black,

  );static const popins600style28 =  TextStyle(
    fontFamily: "Poppins",
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Colors.black,

  );
  static const popins500style16 =  TextStyle(
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
  );
}
