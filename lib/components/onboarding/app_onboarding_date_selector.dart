import 'package:app/utils/helpers/app_helper.dart';
import 'package:flutter/material.dart';

import '../../theme/app_spacing.dart';
import '../app_text.dart';
import '../app_touchable_opacity.dart';

class AppOnboardingDateSelector extends StatefulWidget {
  final Function(DateTime date) onDateSelected;
  final DateTime? defaultDate;

  const AppOnboardingDateSelector(
      {super.key, required this.onDateSelected, this.defaultDate});

  @override
  State<AppOnboardingDateSelector> createState() =>
      _AppOnboardingDateSelectorState();
}

class _AppOnboardingDateSelectorState extends State<AppOnboardingDateSelector> {
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
    return AppTouchableOpacity(
      onTap: () async {
        final DateTime? date = await showDatePicker(
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            selectableDayPredicate: (day) {
              return isAtLeast18YearsFromNow(day);
            },
            context: context,
            currentDate: getDate18YearsAgo(),
            firstDate: DateTime(2000),
            lastDate: DateTime(3000));
        if (date != null) {
          setState(() {
            _selectedDate = date;
          });
          widget.onDateSelected(date);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: _selectedDate?.day != null
                ? '${AppHelper.leftPadIntZeroToNine(_selectedDate?.day)} / '
                : 'DD /',
            size: AppSpacing.space_24,
          ),
          AppText(
              text: _selectedDate?.month != null
                  ? '${AppHelper.leftPadIntZeroToNine(_selectedDate?.month)} / '
                  : ' MM /',
              size: AppSpacing.space_24),
          AppText(
              text: _selectedDate?.year != null
                  ? AppHelper.leftPadIntZeroToNine(_selectedDate?.year)
                  : ' YYYY',
              size: AppSpacing.space_24),
        ],
      ),
    );
  }
}
