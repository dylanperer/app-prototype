part of 'onboarding_screen.dart';

Widget _onboardingView(OnboardingScreen screen, _OnboardingScreenState state,
    BuildContext context) {
  return SafeAreaComponent(
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: state.onPageViewChange,
          controller: screen._pageController,
          children: [
            GenderScreen(
              onBoardSettings: screen._onBoardSettings,
            ),
            DobScreen(
              onBoardSettings: screen._onBoardSettings,
              error: state._dobError,
            ),
            InterestsScreen(
              onBoardSettings: screen._onBoardSettings,
            ),
            PreferredGenderScreen(
              onBoardSettings: screen._onBoardSettings,
              error: state._preferredGenderError,
              onPreferredGenderChange: (value) =>
                  state._onPreferredGenderChange(value),
            ),
            BioScreen(
              onBoardSettings: screen._onBoardSettings,
            ),
            ProfilePictureScreen(
              onBoardSettings: screen._onBoardSettings,
            )
          ],
        )
            .animate(controller: state._pageViewAnimController, autoPlay: false)
            .fade(end: 0, duration: 320.ms),
        Positioned(
          bottom: 120,
          child: SmoothPageIndicator(
            controller: screen._pageController,
            count: 6,
            effect: const ExpandingDotsEffect(
                dotColor: AppColors.stone_200,
                activeDotColor: AppColors.main_500),
          ),
        ),
        Positioned(
          right: 0,
          child: SizedBox(
            child: state._currentPage == 5
                ? RoundedButtonComponent(
                    icon: Icons.check,
                    onTap: state.onComplete,
                  )
                    .animate(
                        controller: state._continueButtonAnimController,
                        autoPlay: false)
                    .fadeIn(duration: 600.ms)
                : RoundedButtonComponent(
                    onTap: () async {
                      if (state._isTransitioning == true) return;
                      state._isTransitioning = true;
                      await state._onContinue();
                      state._isTransitioning = false;
                    },
                  )
                    .animate(
                        controller: state._continueButtonAnimController,
                        autoPlay: false)
                    .fadeOut(duration: 600.ms),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: RepaintBoundary(
            child: TouchableOpacityComponent(
                    onTap: state.onBack,
                    child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(
                        right: AppSpacing.space_16,
                        bottom: AppSpacing.space_16,
                      ),
                      child: const Icon(
                        Icons.arrow_circle_left_rounded,
                        color: AppColors.stone_600,
                        size: AppSpacing.space_48,
                      ),
                    ))
                .animate(
                    controller: state._backButtonAnimController,
                    autoPlay: false)
                .fadeIn(duration: 320.ms),
          ),
        ),
      ],
    ),
  );
}
