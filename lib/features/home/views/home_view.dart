import 'package:flutter/material.dart';

import '../widgets/home_sections/historical_characters_section.dart';
import '../widgets/home_sections/historical_period_section.dart';
import '../widgets/home_sections/historical_souvenirs_section.dart';
import '../widgets/home_sections/home_app_bar_section.dart';

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
            //!AppBar
            SliverToBoxAdapter(child: HomeAppBarSection()),
            //!Historical Period
            SliverToBoxAdapter(child: HistoricalPeriodSection()),
            SliverToBoxAdapter(child: HistoricalCharactersSection()),
            SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
          ],
        ),
      ),
    );
  }
}
