import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class HistoricalPeriodItem extends StatelessWidget {
  const HistoricalPeriodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: 164,
      height: 96,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 16.0,
          ),
          SizedBox(
            height: 48.0,
            width: 62.0,
            child: Text(
              'Ancient Egypt',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: CustomTextStyle.poppins500style18.copyWith(
                fontSize: 16.0,
                color: AppColors.deepBrown,
              ),
            ),
          ),
          Container(
            height: 64.0,
            width: 47.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.assetsImagesFrame),
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
        ],
      ),
    );
  }
}
