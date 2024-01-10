import 'package:flutter/material.dart';

import '../../theme/app_spacing.dart';

class BottomSheetConfiguration {
  final BuildContext context;
  final Widget? item;
  final List<Widget>? items;
  late final List<double> snapPoints;

  BottomSheetConfiguration(
      {required this.context, this.item, this.items, required this.snapPoints});
}

class AppUi {
  AppUi._();

  static const List<double> defaultBottomSheetSnapPoints = [0.3, 0.75, 1];

  static Future<void> openBottomSheet(
      BottomSheetConfiguration configuration) async {
    await showModalBottomSheet(
      context: configuration.context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(AppSpacing.space_32))),
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_20, horizontal: 0),
          child: configuration.items != null?  DraggableScrollableSheet(
            snapAnimationDuration: const Duration(milliseconds: 320),
            maxChildSize: configuration.snapPoints.last,
            snap: true,
            minChildSize: configuration.snapPoints.first,
            initialChildSize: configuration.snapPoints.first,
            snapSizes: configuration.snapPoints.length > 1
                ? configuration.snapPoints
                : null,
            expand: false,
            builder: (_, controller) {
              return ListView.builder(
                  itemCount: configuration.items!.length,
                  controller: controller,
                  itemBuilder: (_, i) => configuration.items![i]);
            },
          ): configuration.item,
        );
      },
    );
  }
}
