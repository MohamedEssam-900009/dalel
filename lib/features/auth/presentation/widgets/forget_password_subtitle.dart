import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class ForgetPasswordSubTitle extends StatelessWidget {
  const ForgetPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Text(
        'Enter your registered email below to receive password reset instruction',
        style: CustomTextStyle.poppins400style12.copyWith(fontSize: 14.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}