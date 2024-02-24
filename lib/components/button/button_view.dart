part of 'button_component.dart';

Widget _buttonView(ButtonComponent component, _ButtonComponentState state,
    BuildContext context) {
  return TouchableOpacityComponent(
    isDisabled: state._isLoading,
    onTap: state._onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(
          vertical: 0, horizontal: AppSpacing.space_6),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(AppSpacing.space_56)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: -14,
                color: Colors.black,
                blurRadius: 16)
          ]),
      child: Container(
          constraints: const BoxConstraints.expand(height: AppSpacing.space_68),
          decoration: const BoxDecoration(
              color: AppColors.main_500,
              borderRadius:
                  BorderRadius.all(Radius.circular(AppSpacing.space_56))),
          child: Align(
            child: RepaintBoundary(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const CircularProgressIndicator(
                    color: AppColors.neutral_100,
                    backgroundColor: AppColors.stone_350,
                    strokeWidth: 4.5,
                  )
                      .animate(target: state._isLoading ? 1 : 0)
                      .fade(duration: 300.ms, curve: Curves.easeInOut),
                  TextComponent(
                    text: component.text,
                    size: AppSpacing.space_20,
                    color: AppColors.neutral_100,
                    fontWeight: FontWeight.w700,
                  )
                      .animate(target: state._isLoading ? 0 : 1)
                      .fade(duration: 300.ms, curve: Curves.easeInOut),
                ],
              ),
            ),
          )),
    ),
  );
}
