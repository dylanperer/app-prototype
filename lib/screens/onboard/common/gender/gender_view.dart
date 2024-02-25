part of 'gender_screen.dart';

Widget _genderView(GenderScreen screen, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              TextComponent(
                text: 'Which gender do you identify with?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              InfoTextComponent(text: 'Tap \'More options\' for additional genders.')
            ],
          ),
          Column(
            children: [
              OnboardingGenderToggleComponent(
                  isDefaultChecked: screen.onBoardSettings.gender == 'M',
                  onToggle: (isToggled) {
                    if (isToggled) {
                      screen.onBoardSettings.gender = 'M';
                    } else {
                      screen.onBoardSettings.gender = 'F';
                    }
                  }),
              const Gap(AppSpacing.space_20),
              InteractiveLabelComponent(
                text: 'More options',
                onTap: () {
                  AppUi.openBottomSheet(BottomSheetConfiguration(context: context, items: [], snapPoints: AppUi.defaultBottomSheetSnapPoints));
                },
              )
            ],
          ),
          const SizedBox(
            width: AppSpacing.space_80,
            height: AppSpacing.space_80,
          )
        ],
      ),
    );
}
