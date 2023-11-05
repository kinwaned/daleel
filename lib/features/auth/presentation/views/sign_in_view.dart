import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/features/auth/presentation/views/widgets/already_have_an_account_widget.dart';
import 'package:daleel/features/auth/presentation/views/widgets/welcome_banner.dart';
import 'package:daleel/features/auth/presentation/views/widgets/welcome_text_widget.dart';
import 'package:daleel/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomeBanner(),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 32,
          )),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 32,
          )),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 16,
          )),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
                text1: AppStrings.dontHaveAnAccount,
                text2: AppStrings.signUp,
                onTap: () {
                  customReplacementNavigation(context, '/signUp');
                }),
          )
        ],
      ),
    );
  }
}
