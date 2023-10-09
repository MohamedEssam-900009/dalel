import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class ForgetPasswordImage extends StatelessWidget {
  const ForgetPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.0,
      width: 235.0,
      child: Image.asset(Assets.assetsImagesForgetPassword),
    );
  }
}