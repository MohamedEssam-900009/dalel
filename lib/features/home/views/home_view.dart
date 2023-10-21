import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_category_list_view.dart';
import '../widgets/historical_period.dart';
import '../widgets/home_app_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 28.0)),
            SliverToBoxAdapter(child: CustomHomeViewAppBar()),
            SliverToBoxAdapter(child: SizedBox(height: 32.0)),
            SliverToBoxAdapter(
                child: CustomHeaderText(text: AppStrings.historicalPeriods)),
            SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverToBoxAdapter(child: HistoricalPeriods()),
            SliverToBoxAdapter(child: SizedBox(height: 32.0)),
            SliverToBoxAdapter(
                child: CustomHeaderText(text: AppStrings.historicalCharacters)),
            SliverToBoxAdapter(
              child: SizedBox(height: 16.0),
            ),
            SliverToBoxAdapter(child: CustomCategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32.0)),
            SliverToBoxAdapter(
              child: CustomHeaderText(text: AppStrings.historicalSouvenirs),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverToBoxAdapter(child: CustomCategoryListView()),
          ],
        ),
      ),
    );
  }
}
