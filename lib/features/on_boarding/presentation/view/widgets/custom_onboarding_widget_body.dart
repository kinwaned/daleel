import 'package:daleel/core/utils/app_assets.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
class CustomOnBoardingWidgetBody extends StatelessWidget {
  CustomOnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  Assets.assetsImagesOnBoarding1,
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndicator(controller: _controller),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Explore The history with Daleel in a smart way',
                  style: CustomTextStyles.popins500style24
                      .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Using our app’s history libraries you can find many historical periods',
                  style: CustomTextStyles.popins500style16,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }),
    );
  }
}
