part of 'third-party-authentication_component.dart';

Widget _thirdPartyAuthenticationView(
    ThirdPartyAuthenticationComponent component, BuildContext context) {
  return Column(
    children: [
      component.prefix ?? const SizedBox.shrink(),
      const Gap(AppSpacing.space_40),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TouchableOpacityComponent(
              child: SvgPicture.asset('assets/svg/google.svg')),
          TouchableOpacityComponent(
              child: SvgPicture.asset('assets/svg/facebook.svg')),
          TouchableOpacityComponent(
              child: SvgPicture.asset('assets/svg/apple.svg')),
        ],
      ),
      const Gap(AppSpacing.space_40),
      component.postfix ?? const SizedBox.shrink(),
    ],
  );
}
