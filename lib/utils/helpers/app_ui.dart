import 'package:app/components/app_text.dart';
import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/theme/app_colors.dart';
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

class AlertDialogButton {
  final String text;
  final Function onTap;

  AlertDialogButton({required this.text, required this.onTap});
}

class AlertDialogConfiguration {
  final BuildContext context;
  final bool? nonDismissible;
  final String title;
  final Widget content;
  final AlertDialogButton primaryButton;
  final AlertDialogButton? secondaryButton;

  AlertDialogConfiguration(
      {required this.primaryButton,
      this.secondaryButton,
      required this.context,
      this.nonDismissible,
      required this.title,
      required this.content});
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
          child: configuration.items != null
              ? DraggableScrollableSheet(
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
                )
              : configuration.item,
        );
      },
    );
  }

  static Future openAlertDialog(AlertDialogConfiguration configuration) async {
    return showDialog<void>(
      context: configuration.context,
      barrierDismissible: configuration.nonDismissible ?? true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: AppText(
            text: configuration.title,
            textAlign: TextAlign.center,
            size: AppSpacing.space_19,
            fontWeight: FontWeight.w800,
          ),
          content: configuration.content,
          actions: [
            if (configuration.secondaryButton != null)
              AppTouchableOpacity(
                  onTap: () => configuration.secondaryButton?.onTap(),
                  child: Container(
                    color: Colors.red,
                    child: AppText(
                      text: configuration.secondaryButton?.text,
                    ),
                  )),
            AppTouchableOpacity(
                onTap: () => configuration.primaryButton.onTap(),
                child: Container(
                  padding: const EdgeInsets.all(AppSpacing.space_16),
                  color: Colors.transparent,
                  child: AppText(
                    text: configuration.primaryButton.text,
                    color: AppColors.main_500,
                  ),
                )),
          ],
        );
      },
    );
  }
}
