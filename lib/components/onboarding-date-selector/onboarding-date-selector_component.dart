import 'package:app/components/text/text_component.dart';
import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../utils/helpers/app_helper.dart';
part 'onboarding-date-selector_view.dart';

class OnboardingDateSelectorComponent extends StatefulWidget {

  final Function(DateTime date) onDateSelected;
  final DateTime? defaultDate;

  const OnboardingDateSelectorComponent(
      {super.key, required this.onDateSelected, this.defaultDate});

  @override
  State<OnboardingDateSelectorComponent> createState() => _OnboardingDateSelectorComponentState();
}

class _OnboardingDateSelectorComponentState extends State<OnboardingDateSelectorComponent> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();

    if (widget.defaultDate != null) {
      _selectedDate = widget.defaultDate;
    }
  }

  bool isAtLeast18YearsFromNow(DateTime inputDate) {
    DateTime currentDate = DateTime.now();

    int yearsDifference = currentDate.year - inputDate.year;

    // Check if the inputDate is at least 18 years in the past
    if (yearsDifference > 18) {
      return true;
    } else if (yearsDifference == 18) {
      // If the years are exactly 18, check months and days
      if (currentDate.month > inputDate.month) {
        return true;
      } else if (currentDate.month == inputDate.month &&
          currentDate.day >= inputDate.day) {
        return true;
      }
    }
    return false;
  }

  DateTime getDate18YearsAgo() {
    DateTime currentDate = DateTime.now();

    int yearsDifference = currentDate.year - 18;
    return DateTime(yearsDifference);
  }

  @override
  Widget build(BuildContext context) {
    return _onboardingDateSelectorView(widget, this, context);
  }
}
