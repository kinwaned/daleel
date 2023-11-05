import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/functions/show_toast.dart';
import 'package:daleel/core/utils/app_colors.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/widgets/custom_btn.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_cubit.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_state.dart';
import 'package:daleel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:daleel/features/auth/presentation/views/widgets/forget_password_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          showToast('Welcome Back!');
          customReplacementNavigation(context, '/home');
        } else if (state is SignInFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: cubit.signInFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (email) {
                    cubit.emailAddress = email;
                  },
                ),
                CustomTextFormField(
                  obscureText: cubit.obscurePasswordTextValue,
                  suffixIcon: IconButton(
                      onPressed: () {
                        cubit.obscurePasswordText();
                      },
                      icon: Icon(
                        cubit.obscurePasswordTextValue == true
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      )),
                  labelText: AppStrings.password,
                  onChanged: (password) {
                    cubit.password = password;
                  },
                ),
                const SizedBox(height: 16,),
                const ForgetPasswordTextWidget(),
                const SizedBox(
                  height: 134,
                ),
                state is SignInLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomBtn(
                        text: AppStrings.signIn,
                        onPressed: () {
                          if (cubit.signInFormKey.currentState!.validate()) {
                            cubit.signInWithEmailAndPassword();
                          }
                        }),
              ],
            ));
      },
    );
  }
}
