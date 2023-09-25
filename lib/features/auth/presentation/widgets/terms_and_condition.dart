import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'custom_check_box.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: CustomTextStyle.poppins400style12,
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: CustomTextStyle.poppins400style12.copyWith(
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
