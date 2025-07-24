import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/widgets/featured_item.dart';

class FeatureItemsList extends StatelessWidget {
  const FeatureItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (Index) {
          return Padding(
            padding: const EdgeInsets.symmetric( horizontal: 8),
            child: FeaturedItem(),
          );
        }),
      ),
    );
  }
}
