import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});

  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              customReplacementNavigate(context, '/signUp');
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
          GestureDetector(
            onTap: () {
              customReplacementNavigate(context, '/signIn');
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyle.poppins300style16
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(microseconds: 2000),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
