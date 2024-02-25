part of 'interests_screen.dart';

Widget _interestsView(InterestsScreen screen, _InterestsScreenState state, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              TextComponent(
                text: "Share your interests.",
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              TextComponent(
                text: 'You can always add more later.',
              )
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  InputFieldComponent(
                    controller: state._texInputController,
                    hintText: 'hiking',
                    prefixIcon: const Icon(Icons.interests_rounded),
                    onSubmitted: state.onAddInterest,
                  ),
                  const Gap(AppSpacing.space_16),
                  ChipGroupComponent(interests: state._interests,),
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
