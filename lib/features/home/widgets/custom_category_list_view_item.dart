import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class CustomCategoryListViewItem extends StatelessWidget {
  const CustomCategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 10.0,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 74.0,
            height: 96.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: const DecorationImage(
                image: AssetImage(Assets.assetsImagesFrame3),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 11.0),
          Text(
            'Lionheart',
            style: CustomTextStyle.poppins500style14,
          ),
        ],
      ),
    );
  }
}
