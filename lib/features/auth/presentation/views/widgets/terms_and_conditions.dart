import 'package:daleel/core/utils/app_strings.dart';
import 'package:daleel/core/utils/app_text_styles.dart';
import 'package:daleel/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: CustomTextStyles.poppins400style12),
            TextSpan(
                text: AppStrings.termsAndCondition,
                style: CustomTextStyles.poppins400style12.copyWith(
                  decoration: TextDecoration.underline,
                )),
          ]),
        ),
      ],
    );
  }
}
