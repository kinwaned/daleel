import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/functions/show_toast.dart';
import 'package:daleel/core/utils/app_colors.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/widgets/custom_btn.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_cubit.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_state.dart';
import 'package:daleel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgetPasswordSuccessState) {
          showToast('Check Your Email To Reset Your Password!');
          customReplacementNavigation(context, '/signIn');
        }else if (state is ForgetPasswordFailureState){
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
              key: cubit.forgetPasswordFormKey,
              child: Column(
                children: [

                  CustomTextFormField(
                    labelText: AppStrings.emailAddress,
                    onChanged: (email) {
                      cubit.emailAddress = email;
                    },
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  state is SignInLoadingState
                      ? CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  )
                      : CustomBtn(
                      text: AppStrings.sendResetPasswordLink,
                      onPressed: () {
                        if (cubit.forgetPasswordFormKey.currentState!.validate()) {
                          cubit.forgetPasswordWithLink();
                        }
                      }),
                ],
              )),
        );
      },
    );
  }
}
