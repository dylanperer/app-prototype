part of 'onboarding-gender-toggle_component.dart';

Widget _onboardingGenderToggleView(OnboardingGenderToggleComponent component,
    _OnboardingGenderToggleComponentState state, BuildContext context) {
  return TouchableOpacityComponent(
    onTap: state.onTap,
    child: RepaintBoundary(
      child: Stack(
        children: [
          Container(
            width: 200,
            height: AppSpacing.space_64,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: AppColors.stone_300,
                    width: 1,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignInside),
                borderRadius: const BorderRadius.all(
                    Radius.circular(AppSpacing.space_56))),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 100,
                height: AppSpacing.space_64,
                decoration: const BoxDecoration(
                    color: AppColors.main_500,
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppSpacing.space_64))),
              )
                  .animate(
                      controller: state._animationController, autoPlay: false)
                  .moveX(
                      end: 100, duration: 320.ms, curve: Curves.easeInOutSine),
              AnimatedSwitcher(
                  duration: 320.ms,
                  child: Icon(
                    key: ValueKey(state._isToggled),
                    Icons.female_rounded,
                    color: state._isToggled
                        ? AppColors.main_500
                        : AppColors.neutral_100,
                    size: 32,
                  )),
            ],
          ),
          Positioned(
            left: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedSwitcher(
                    duration: 320.ms,
                    child: Icon(
                      key: ValueKey(state._isToggled),
                      Icons.male_rounded,
                      color: state._isToggled
                          ? AppColors.neutral_100
                          : AppColors.main_500,
                      size: 32,
                    )),
                Container(
                  width: 100,
                  height: AppSpacing.space_64,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppSpacing.space_64))),
                ).animate(target: state._isToggled ? 100 : 0).moveX(
                    end: -100, duration: 320.ms, curve: Curves.easeInOutSine),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
