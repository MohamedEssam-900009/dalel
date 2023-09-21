import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_nav_bar.dart';
import '../widgets/onboarding_widget_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const CustomNavBar(),
              OnBoardingWidgetBody(),
              const CustomButton(
                text: AppStrings.next,
              ),
              const SizedBox(
                height: 17.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
