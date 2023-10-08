import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/widgets/custom_btn.dart';
import 'package:daleel/features/auth/presentation/views/widgets/already_have_an_account_widget.dart';
import 'package:daleel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:daleel/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:daleel/features/auth/presentation/views/widgets/welcome_text_widget.dart';
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
                height: 170,
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
              child: CustomTextField(labelText: AppStrings.firstName),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.lastName),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.emailAddress),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.password),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConditionsWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomBtn(text: AppStrings.signUp, onPressed: () {}),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
