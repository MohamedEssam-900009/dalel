import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class HistoricalPeriodItem extends StatelessWidget {
  const HistoricalPeriodItem({
    super.key,
    required this.model,
  });

  final HistoricalPeriodsModel model;

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
          const SizedBox(width: 16.0),
          SizedBox(
            height: 48.0,
            width: 62.0,
            child: Text(
              model.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: CustomTextStyle.poppins500style18.copyWith(
                fontSize: 16.0,
                color: AppColors.deepBrown,
              ),
            ),
          ),
          SizedBox(
            height: 64.0,
            width: 47.0,
            child: CachedNetworkImage(
              imageUrl: model.image,
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: AppColors.grey,
                highlightColor: Colors.white,
                child:  Container(
                  width: 47.0,
                  height: 64.0,
                  color: AppColors.grey,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(width: 16.0),
        ],
      ),
    );
  }
}
