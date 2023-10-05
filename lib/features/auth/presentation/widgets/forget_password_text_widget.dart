import 'package:dalel/core/functions/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigate(context, 'path');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyle.poppins600style28.copyWith(fontSize: 12.0),
        ),
      ),
    );
  }
}
