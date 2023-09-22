import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

import 'custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});

  final PageController controller;
  Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 290.0,
              width: 343.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(onBoardingData[index].imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            CustomSmoothPageIndicator(controller: controller),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              onBoardingData[index].title,
              style: CustomTextStyle.poppins500style24.copyWith(
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              onBoardingData[index].subTitle,
              style: CustomTextStyle.poppins300style16,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
