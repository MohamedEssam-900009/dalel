import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_colors.dart';

class CustomShimmerCategory extends StatelessWidget {
  const CustomShimmerCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 164.0,
          height: 96.0,
          child: Shimmer.fromColors(
            baseColor: AppColors.grey,
            highlightColor: Colors.white,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        SizedBox(
          width: 164.0,
          height: 96.0,
          child: Shimmer.fromColors(
            baseColor: AppColors.grey,
            highlightColor: Colors.white,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
