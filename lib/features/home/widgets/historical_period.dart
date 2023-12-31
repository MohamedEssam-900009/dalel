import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_shimmer_category.dart';
import 'historical_period_item.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance
          .collection(FireBaseStrings.historicalPeriods)
          .get(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          List<HistoricalPeriodsModel> historicalPeriods = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            historicalPeriods
                .add(HistoricalPeriodsModel.fromJson(snapshot.data!.docs[i]));
          }
          return SizedBox(
            height: 96.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10.0);
              },
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                return HistoricalPeriodItem(
                  model: historicalPeriods[index],
                );
              },
              itemCount: snapshot.data!.docs.length,
            ),
          );
        }

        return const CustomShimmerCategory();
      },
    );
  }
}
