import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/features/auth/presentation/views/widgets/already_have_an_account_widget.dart';
import 'package:daleel/features/auth/presentation/views/widgets/welcome_text_widget.dart';
import 'package:daleel/features/auth/presentation/widgets/custom_sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 170,
              ),
            ),
            SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 44,
              ),
            ),
            SliverToBoxAdapter(child: CustomSignUpForm(),),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
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

