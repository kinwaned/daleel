import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:daleel/features/on_boarding/data/models/onboarding_models.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingWidgetBody extends StatelessWidget {
  const CustomOnBoardingWidgetBody({super.key, required this.controller, this.onPageChagned});

  final PageController controller;
  final Function(int)? onPageChagned;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: PageView.builder(
        onPageChanged: onPageChagned,
        physics: const BouncingScrollPhysics(),
          controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 290,
                  width: 343,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].image,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndicator(controller: controller),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                 Text(
                  onBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins500style16,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }),
    );
  }
}
