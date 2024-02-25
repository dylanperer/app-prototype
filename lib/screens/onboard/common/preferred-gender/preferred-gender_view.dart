part of 'preferred-gender_screen.dart';

Widget _preferredGenderView(PreferredGenderScreen screen, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              TextComponent(
                text: 'Who do you want to be shown to?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              InfoTextComponent(
                text: 'You can further customise this in the profile section.',
              )
            ],
          ),
          Column(
            children: [
              RadioButtonGroupComponent(
                defaultItemId: screen.onBoardSettings.preferredGender,
                items: const {
                  'men': 'Men.',
                  'women': 'Women.',
                  'both': 'Both men and women.',
                },
                onChange: (id) {
                  if (screen.onPreferredGenderChange != null) {
                    screen.onPreferredGenderChange!(id);
                  }
                  screen.onBoardSettings.preferredGender = id;
                },
              ),
              ErrorComponent(error: screen.error)
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
