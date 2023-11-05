import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/features/auth/presentation/views/widgets/already_have_an_account_widget.dart';
import 'package:daleel/features/auth/presentation/views/widgets/welcome_text_widget.dart';
import 'package:daleel/features/auth/presentation/widgets/custom_sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 152,
              ),
            ),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 44,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSignUpForm(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                  onTap: () {
                    customNavigation(context, '/signIn');
                  }),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
