import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 290.0,
              width: 343.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.assetsImagesOnBoarding1),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            CustomSmoothPageIndicator(controller: _controller),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              'Explore The history with Dalel in a smart way',
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
              'Explore The history with Dalel in a smart way',
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
