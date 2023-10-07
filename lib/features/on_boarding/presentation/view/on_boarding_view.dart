import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_nav_bar.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/custom_onboarding_widget_body.dart';
import 'package:daleel/features/on_boarding/presentation/view/widgets/get_buttons.dart';
import 'package:daleel/features/splash/presentation/view/functions/on_boarding_fun.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomNavBar(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigation(context, '/SignUp');
                },
              ),
              CustomOnBoardingWidgetBody(
                onPageChagned: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(
                height: 80,
              ),
              GetButtons(controller: _controller, currentIndex: currentIndex),
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
