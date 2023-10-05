import 'package:daleel/core/functions/custom_navigations.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:daleel/core/widgets/custom_btn.dart';
import 'package:daleel/features/on_boarding/data/models/onboarding_models.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.controller, required this.currentIndex});
  final int currentIndex;
  final PageController controller ;
  @override
  Widget build(BuildContext context) {
    if ( currentIndex == onBoardingData.length - 1){
      return Column(
        children: [
          CustomBtn(text: AppStrings.signUp, onPressed: () {
            customReplacementNavigation(context, '/SignUp');
          }),
          const SizedBox(height: 10),
          GestureDetector(
              onTap: (){
                customReplacementNavigation(context, '/SignIn');
              },
              child: Text(
                AppStrings.loginNow,
                style: CustomTextStyles.popins500style16
                    .copyWith(fontWeight: FontWeight.w400),
              )),
        ],
      );
    }else{
      return  CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }

  }
}
