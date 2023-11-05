import 'package:daleel/core/functions/custom_navigation.dart';
import 'package:daleel/core/functions/show_toast.dart';
import 'package:daleel/core/utils/app_colors.dart';
import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/widgets/custom_btn.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_cubit.dart';
import 'package:daleel/features/auth/presentation/cubits/auth_cubits/auth_state.dart';
import 'package:daleel/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:daleel/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showToast('Account created successfully!');
          customReplacementNavigation(context, '/home');
        } else if (state is SignUpFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: cubit.signUpFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.firstName,
                  onChanged: (firstName) {
                    cubit.firstName = firstName;
                  },
                ),
                CustomTextFormField(
                  labelText: AppStrings.lastName,
                  onChanged: (lastName) {
                    cubit.lastName = lastName;
                  },
                ),
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
                const TermsAndConditionsWidget(),
                const SizedBox(
                  height: 120,
                ),
                state is SignUpLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor,)
                    : CustomBtn(
                        color: cubit.termAndConditionsCheckBox == false
                            ? AppColors.grey
                            : null,
                        text: AppStrings.signUp,
                        onPressed: () {
                          if (cubit.termAndConditionsCheckBox == true) {
                            if (cubit.signUpFormKey.currentState!.validate()) {
                              cubit.signUpWithEmailAndPassword();
                            }
                          }
                        }),
              ],
            ));
      },
    );
  }
}
