import 'package:daleel/core/routes/app_routes.dart';
import 'package:daleel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Daleel extends StatelessWidget {
  const Daleel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router ,
    );
  }
}