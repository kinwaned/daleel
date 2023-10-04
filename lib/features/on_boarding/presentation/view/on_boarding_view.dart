import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/widgets/custom_btn.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_nav_bar.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_onboarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomNavBar(),
              CustomOnBoardingWidgetBody(),
              const SizedBox(
                height: 40,
              ),
              const CustomBtn(text: AppStrings.next,),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
