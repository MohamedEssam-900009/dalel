import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.assetsImagesMenu),
        Text(
          AppStrings.appName,
          style: CustomTextStyle.pacifico400style64.copyWith(fontSize: 22.0),
        )
      ],
    );
  }
}
