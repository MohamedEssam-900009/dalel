import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_header_text.dart';
import '../historical_period.dart';

class HistoricalPeriodSection extends StatelessWidget {
  const HistoricalPeriodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: AppStrings.historicalPeriods),
        SizedBox(height: 16.0),
        HistoricalPeriods(),
        SizedBox(height: 32.0),
      ],
    );
  }
}
