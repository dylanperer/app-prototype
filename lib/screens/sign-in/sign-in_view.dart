part of 'sign-in_component.dart';

Widget _signInView(SignInComponent component, _SignInComponentState state,
    BuildContext context) {
  return SafeAreaComponent(
    child: Flex(
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          child: SvgPicture.asset('assets/svg/logo1.svg'),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComponent(
                text: 'Sign in',
                size: AppSpacing.space_28,
                fontWeight: FontWeight.w700,
              ),
              TextComponent(
                text: 'Hello there, lets get back into it.',
                size: AppSpacing.space_18,
              )
            ],
          ),
        ),
        Column(
          children: [
            const InputFieldComponent(
              hintText: 'email',
              prefixIcon: Icon(Icons.alternate_email),
            ),
            const Gap(AppSpacing.space_16),
            const InputFieldComponent(
              hintText: 'password',
              suffixText: 'Forgot?',
              prefixIcon: Icon(
                AppIcons.lock,
                size: 20,
              ),
            ),
            const Gap(AppSpacing.space_16),
            ErrorComponent(error: state._error)
          ],
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: CheckboxComponent(
                isDefaultChecked: true,
                textPostfix: 'Remember me',
                onChange: (value) => print(''))),
        ButtonComponent(
          text: 'Sign in',
          onTap: () async => {await state._onSignIn()},
        ),
        ThirdPartyAuthenticationComponent(
          prefix: const TextComponent(text: 'Or, login with...'),
          postfix: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextComponent(text: 'Don\'t have one yet? '),
              InteractiveLabelComponent(
                text: 'Create account',
                onTap: () {
                  context.go(AppRouter.route(AppRoute.signUp));
                },
              )
            ],
          ),
        )
      ],
    ),
  );
}
