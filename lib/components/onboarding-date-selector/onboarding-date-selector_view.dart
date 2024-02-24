part of 'onboarding-date-selector_component.dart';

Widget _onboardingDateSelectorView(OnboardingDateSelectorComponent component, _OnboardingDateSelectorComponentState state, BuildContext context) {
  return TouchableOpacityComponent(
      onTap: () async {
        final DateTime? date = await showDatePicker(
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            selectableDayPredicate: (day) {
              return state.isAtLeast18YearsFromNow(day);
            },
            context: context,
            currentDate: state.getDate18YearsAgo(),
            firstDate: DateTime(1900),
            lastDate: DateTime(3000));
        if (date != null) {
          state.setState(() {
            state._selectedDate = date;
          });
          component.onDateSelected(date);
        }
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(AppSpacing.space_16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextComponent(
              text: state._selectedDate?.day != null
                  ? '${AppHelper.leftPadIntZeroToNine(state._selectedDate?.day)} / '
                  : 'day /',
              color: state._selectedDate?.day != null ? null : AppColors.stone_400,
              size: AppSpacing.space_24,
            ),
            TextComponent(
                text: state._selectedDate?.month != null
                    ? '${AppHelper.leftPadIntZeroToNine(state._selectedDate?.month)} / '
                    : ' month /',
                color: state._selectedDate?.day != null ? null : AppColors.stone_400,
                size: AppSpacing.space_24),
            TextComponent(
                text: state._selectedDate?.year != null
                    ? AppHelper.leftPadIntZeroToNine(state._selectedDate?.year)
                    : ' year',
                color: state._selectedDate?.day != null ? null : AppColors.stone_400,
                size: AppSpacing.space_24),
          ],
        ),
      ),
    );
}
