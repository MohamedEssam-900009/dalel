import 'package:flutter/material.dart';

import 'custom_category_list_view_item.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133.0,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return const CustomCategoryListViewItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16.0);
        },
        scrollDirection: Axis.horizontal,
        itemCount: 6,
      ),
    );
  }
}
