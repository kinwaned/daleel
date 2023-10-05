import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:daleel/features/on_boarding/data/models/onboarding_models.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingWidgetBody extends StatelessWidget {
  CustomOnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
          controller: _controller,
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
                CustomSmoothPageIndicator(controller: _controller),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.popins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                 Text(
                  onBoardingData[index].subTitle,
                  style: CustomTextStyles.popins500style16,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }),
    );
  }
}
