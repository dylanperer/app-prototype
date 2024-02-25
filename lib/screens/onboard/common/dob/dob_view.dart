part of 'dob_screen.dart';

Widget _dobView(DobScreen screen, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              TextComponent(
                text: 'When is your birthday?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              InfoTextComponent(text: 'Please note that this cannot be changed later.',)
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  OnboardingDateSelectorComponent( defaultDate: screen.onBoardSettings.dob,
                    onDateSelected: (DateTime date) {
                      screen.onBoardSettings.dob = date;
                      print(screen.onBoardSettings.dob);
                    },
                  ),
                  ErrorComponent(error: screen.error)
                ],
              )),
          const SizedBox(
            width: AppSpacing.space_80,
            height: AppSpacing.space_80,
          )
        ],
      ),
    );
}
